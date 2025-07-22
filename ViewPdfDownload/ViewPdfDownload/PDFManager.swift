import SwiftUI
import PDFKit

class PDFManager {

    static let shared = PDFManager()

    private init() {}

    /// Generates a PDF file from a SwiftUI view.
    ///
    /// This method captures a SwiftUI `View` and renders it into a PDF file named `pdfName`.
    /// It supports both iOS 16+ (via `ImageRenderer`) and older versions (via `UIHostingController`).
    ///
    /// - Parameters:
    ///   - view: The SwiftUI `View` to be rendered.
    ///   - pdfName: Optional name of the generated PDF file. Defaults to `"Report"`.
    ///   - completion: A closure called with the `URL` of the generated PDF file, or `nil` if generation failed.
    @MainActor
    func generatePDF<Content: View>(from view: Content, pdfName: String = "Report", completion: ((URL?) -> Void)? = nil) {

        if #available(iOS 16.0, *) {
            // iOS 16+ uses ImageRenderer
            let renderer = ImageRenderer(content: view)
            renderer.proposedSize = .init(width: 595, height: 842) // A4 at 72 DPI

            guard let image = renderer.uiImage else {
                completion?(nil)
                return
            }

            createPDF(from: image, fileName: pdfName, completion: completion)

        }else {
            let hostingController = UIHostingController(rootView: view)
            let targetWidth: CGFloat = 595  // A4 width at 72 DPI
            let maxHeight: CGFloat = 10_000 // Arbitrary large height
            
            // Setup window to host offscreen view
            let window = UIWindow(frame: CGRect(x: 0, y: 0, width: targetWidth, height: maxHeight))
            let rootVC = UIViewController()
            window.rootViewController = rootVC
            window.makeKeyAndVisible()
            
            rootVC.view.addSubview(hostingController.view)
            
            // Disable autoresizing mask
            hostingController.view.translatesAutoresizingMaskIntoConstraints = false
            
            // Apply layout constraints
            NSLayoutConstraint.activate([
                hostingController.view.leadingAnchor.constraint(equalTo: rootVC.view.leadingAnchor),
                hostingController.view.trailingAnchor.constraint(equalTo: rootVC.view.trailingAnchor),
                hostingController.view.topAnchor.constraint(equalTo: rootVC.view.topAnchor)
            ])
            
            // Force layout
            rootVC.view.setNeedsLayout()
            rootVC.view.layoutIfNeeded()
            
            // Calculate size
            let targetSize = hostingController.view.systemLayoutSizeFitting(
                CGSize(width: targetWidth, height: UIView.layoutFittingCompressedSize.height),
                withHorizontalFittingPriority: .required,
                verticalFittingPriority: .fittingSizeLevel
            )
            
            // Update frame
            hostingController.view.frame = CGRect(origin: .zero, size: targetSize)
            
            // Delay to ensure rendering
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                let format = UIGraphicsImageRendererFormat()
                format.scale = 2
                
                let renderer = UIGraphicsImageRenderer(size: targetSize, format: format)
                
                // Use more reliable rendering for offscreen views
                let image = renderer.image { context in
                    hostingController.view.layer.render(in: context.cgContext)
                }
                
                // Clean up
                hostingController.view.removeFromSuperview()
                window.isHidden = true
                
                // Generate PDF
                self.createPDF(from: image, fileName: pdfName, completion: completion)
            }
        }
    }

    private func createPDF(from image: UIImage, fileName: String, completion: ((URL?) -> Void)?) {
        //        let pdfMetaData = [
        //            kCGPDFContextCreator: "MyApp",
        //            kCGPDFContextAuthor: "SwiftUI"
        //        ]
        
        let format = UIGraphicsPDFRendererFormat()
        //   format.documentInfo = pdfMetaData as [String: Any]

        let fileNameWithExtension = fileName.hasSuffix(".pdf") ? fileName : "\(fileName).pdf"
        let url = FileManager.default.temporaryDirectory.appendingPathComponent(fileNameWithExtension)

        let renderer = UIGraphicsPDFRenderer(bounds: CGRect(origin: .zero, size: image.size), format: format)

        do {
            try renderer.writePDF(to: url) { context in
                context.beginPage()
                image.draw(at: .zero)
            }
            presentShareSheet(with: url)
            completion?(url)
        } catch {
            print("Failed to generate PDF: \(error)")
            completion?(nil)
        }
    }

    private func presentShareSheet(with url: URL) {
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let root = scene.windows.first?.rootViewController {
            
            // ✅ iPad Fix: Set sourceView and sourceRect
            if let popoverController = activityVC.popoverPresentationController {
                popoverController.sourceView = root.view
                popoverController.sourceRect = CGRect(x: root.view.bounds.midX,
                                                      y: root.view.bounds.midY,
                                                      width: 0,
                                                      height: 0)
                popoverController.permittedArrowDirections = []
            }
            
            root.present(activityVC, animated: true)
        }
    }
}

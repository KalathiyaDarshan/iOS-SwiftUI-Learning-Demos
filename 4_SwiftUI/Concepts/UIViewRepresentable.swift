//
//  UIViewRepresentable.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - UIViewRepresentable -

/*
 
 UIViewRepresentable is a SwiftUI protocol that allows you to integrate UIKit views into SwiftUI.
 This is useful when SwiftUI lacks a specific UI component, or when you need advanced customization not yet available in SwiftUI.
 
 // MARK: - 1️⃣ When to Use UIViewRepresentable? -
 Use UIViewRepresentable when:
 ✅ You need to embed UIKit components in SwiftUI (e.g., UITextField, MKMapView, WKWebView).
 ✅ You require features not available in SwiftUI.
 ✅ You want to reuse existing UIKit code in a SwiftUI app.
 ✅ You need to bridge UIKit and SwiftUI for backward compatibility.
 
 // MARK: - 2️⃣ Basic Structure of UIViewRepresentable: -
 To create a SwiftUI-compatible UIKit view, follow these steps:
 1️⃣ Conform to UIViewRepresentable
 2️⃣ Implement makeUIView(context:) → Create & configure the UIKit view
 3️⃣ Implement updateUIView(_:context:) → Update the view when SwiftUI changes
 
 import SwiftUI
 import UIKit
 
 struct CustomUIKitView: UIViewRepresentable {
 func makeUIView(context: Context) -> UILabel {
 let label = UILabel()
 label.text = "Hello from UIKit!"
 label.textAlignment = .center
 label.textColor = .blue
 return label
 }
 
 func updateUIView(_ uiView: UILabel, context: Context) {
 // This function updates the UIKit view when needed
 uiView.text = "Updated Text from SwiftUI!"
 }
 }
 
 // MARK: - ✅ SwiftUI Usage: -
 
 struct ContentView: View {
 var body: some View {
 VStack {
 Text("This is a SwiftUI View")
 CustomUIKitView()
 .frame(height: 50) // Set height for UIView
 }
 }
 }
 
 // MARK: - 3️⃣ Bridging UIKit Components with UIViewRepresentable -
 Let's look at real-world examples of using UIViewRepresentable.
 
 // MARK: - 📌 Example 1: Integrating UITextField in SwiftUI -
 
 SwiftUI has TextField, but it lacks full control over styling like custom placeholder colors, input types, etc.
 We can use UIViewRepresentable to bring UITextField into SwiftUI.
 
 struct CustomTextField: UIViewRepresentable {
 @Binding var text: String  // Binding to SwiftUI state
 
 class Coordinator: NSObject, UITextFieldDelegate {
 var parent: CustomTextField
 
 init(parent: CustomTextField) {
 self.parent = parent
 }
 
 func textFieldDidChangeSelection(_ textField: UITextField) {
 parent.text = textField.text ?? ""
 }
 }
 
 func makeCoordinator() -> Coordinator {
 return Coordinator(parent: self)
 }
 
 func makeUIView(context: Context) -> UITextField {
 let textField = UITextField()
 textField.placeholder = "Enter text here..."
 textField.borderStyle = .roundedRect
 textField.delegate = context.coordinator
 return textField
 }
 
 func updateUIView(_ uiView: UITextField, context: Context) {
 uiView.text = text
 }
 }
 
 // MARK: - ✅ SwiftUI Usage: -
 
 struct ContentView: View {
 @State private var text = ""
 
 var body: some View {
 VStack {
 CustomTextField(text: $text)
 .padding()
 
 Text("You typed: \(text)")
 .padding()
 }
 }
 }
 
 // MARK: - 🔥 Why Use This? -
 ✔ Full control over UITextField behavior
 ✔ Supports custom styling, placeholder formatting, and delegate methods
 
 // MARK: - 📌 Example 2: Integrating WKWebView for Web Content -
 SwiftUI doesn’t have a built-in WebView, but we can use WKWebView.
 
 import SwiftUI
 import WebKit
 
 struct WebView: UIViewRepresentable {
 let url: URL
 
 func makeUIView(context: Context) -> WKWebView {
 return WKWebView()
 }
 
 func updateUIView(_ uiView: WKWebView, context: Context) {
 let request = URLRequest(url: url)
 uiView.load(request)
 }
 }
 
 // MARK: - ✅ SwiftUI Usage: -
 
 struct ContentView: View {
 var body: some View {
 WebView(url: URL(string: "https://www.apple.com")!)
 .edgesIgnoringSafeArea(.all)
 }
 }
 
 // MARK: - 🔥 Why Use This? -
 ✔ Full web browsing support in SwiftUI
 ✔ Handles JavaScript execution, cookies, and advanced web interactions
 
 // MARK: - 4️⃣ Handling User Interaction with Coordinator -
 SwiftUI doesn’t use delegates like UIKit. To handle user interactions, we use a Coordinator.
 
 // MARK: - 📌 Example 3: UISlider with SwiftUI Binding -
 
 struct CustomSlider: UIViewRepresentable {
 @Binding var value: Float
 
 class Coordinator: NSObject {
 var parent: CustomSlider
 
 init(parent: CustomSlider) {
 self.parent = parent
 }
 
 @objc func sliderChanged(_ sender: UISlider) {
 parent.value = sender.value
 }
 }
 
 func makeCoordinator() -> Coordinator {
 return Coordinator(parent: self)
 }
 
 func makeUIView(context: Context) -> UISlider {
 let slider = UISlider()
 slider.minimumValue = 0
 slider.maximumValue = 100
 slider.addTarget(context.coordinator, action: #selector(Coordinator.sliderChanged(_:)), for: .valueChanged)
 return slider
 }
 
 func updateUIView(_ uiView: UISlider, context: Context) {
 uiView.value = value
 }
 }
 
 // MARK: - ✅ SwiftUI Usage: -
 
 struct ContentView: View {
 @State private var sliderValue: Float = 50
 
 var body: some View {
 VStack {
 CustomSlider(value: $sliderValue)
 .padding()
 
 Text("Slider Value: \(sliderValue, specifier: "%.1f")")
 .padding()
 }
 }
 }
 
 // MARK: - 🔥 Why Use This? -
 ✔ Allows real-time binding of UISlider to SwiftUI
 ✔ Supports custom styling and behaviors
 
 // MARK: - 5️⃣ Advanced Example: Passing Data Between UIKit & SwiftUI -
 We can pass data back and forth between SwiftUI and UIKit using Binding or ObservableObject.
 
 // MARK: - 📌 Example 4: Using UIViewRepresentable with ObservableObject -
 
 class TimerViewModel: ObservableObject {
 @Published var timeElapsed: Int = 0
 }
 
 struct TimerLabel: UIViewRepresentable {
 @ObservedObject var viewModel: TimerViewModel
 
 class Coordinator: NSObject {
 var parent: TimerLabel
 
 init(parent: TimerLabel) {
 self.parent = parent
 }
 
 @objc func updateTime() {
 parent.viewModel.timeElapsed += 1
 }
 }
 
 func makeCoordinator() -> Coordinator {
 return Coordinator(parent: self)
 }
 
 func makeUIView(context: Context) -> UILabel {
 let label = UILabel()
 label.textAlignment = .center
 label.text = "Time: 0s"
 Timer.scheduledTimer(timeInterval: 1, target: context.coordinator, selector: #selector(Coordinator.updateTime), userInfo: nil, repeats: true)
 return label
 }
 
 func updateUIView(_ uiView: UILabel, context: Context) {
 uiView.text = "Time: \(viewModel.timeElapsed)s"
 }
 }
 
 // MARK: - ✅ SwiftUI Usage: -
 
 struct ContentView: View {
 @StateObject private var timerVM = TimerViewModel()
 
 var body: some View {
 TimerLabel(viewModel: timerVM)
 .frame(height: 50)
 }
 }
 
 // MARK: - 🔥 Why Use This? -
 ✔ Keeps UIKit component in sync with SwiftUI
 ✔ Perfect for real-time updates (timers, counters, progress bars, etc.)
 
 6. Conclusion: Why UIViewRepresentable is Powerful?
 
 Brings UIKit views into SwiftUI - Use UITextField, UISlider, WKWebView, etc.
 Supports UIKit delegation - Use a Coordinator for interactions
 Allows full customization - Modify styles, behaviors, and animations
 Bridges SwiftUI & UIKit - Useful for transitioning existing apps to SwiftUI
 
 */

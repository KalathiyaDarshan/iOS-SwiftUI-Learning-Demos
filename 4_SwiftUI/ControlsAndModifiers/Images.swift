//
//  Images.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Images -

/*
 
 In SwiftUI, the Image view is used to display images from assets, system symbols (SF Symbols), and remote URLs.
 SwiftUI provides a variety of modifiers to customize images, such as resizing, clipping, overlaying, and rendering modes.
 
 // MARK: - Loading an Image from Assets: -
 //###############################################################################
 
 To display an image added to the Asset Catalog (Assets.xcassets), use:
 Image("exampleImage") // Uses an image stored in Assets
 
 - // MARK: - 1️⃣ Loading a System Image (SF Symbols): -
 
 Image(systemName: "star.fill") // Uses an SF Symbol
 
 - // MARK: - 2️⃣ Loading an Image from a URL (AsyncImage): -
 
 If you want to load an image from a remote URL, use AsyncImage (iOS 15+):
 AsyncImage(url: URL(string: "https://example.com/image.jpg")) { image in
 image.resizable()
 } placeholder: {
 ProgressView() // Shows loading indicator
 }
 .frame(width: 100, height: 100)
 
 // MARK: - Resizing and Scaling Images: -
 //###############################################################################
 
 Images are non-resizable by default. To change their size, you need .resizable().
 
 - // MARK: - 1️⃣ Making an Image Resizable: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200) // Adjusts size
 
 - // MARK: - 2️⃣ Maintaining Aspect Ratio: -
 By default, resizing distorts images. Use .aspectRatio() to preserve the aspect ratio.
 
 Image("exampleImage")
 .resizable()
 .aspectRatio(contentMode: .fit) // Keeps original aspect ratio
 .frame(width: 200)
 
 // MARK: - Image Modifiers and Effects: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Clipping an Image (Cropping): -
 The .clipped() modifier crops parts of an image outside the frame.
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .clipped() // Crops excess parts
 
 - // MARK: - 2️⃣ Rounded Corners: -
 Use .cornerRadius() for rounded corners.
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .cornerRadius(20)
 
 - // MARK: - 3️⃣ Circular Image: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 100, height: 100)
 .clipShape(Circle()) // Crops image into a circle
 
 - // MARK: - 4️⃣ Applying Shadows: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .shadow(radius: 10) // Adds shadow effect
 
 // MARK: - Image Overlays and Borders: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Overlaying Text: -
 You can overlay text on an image using .overlay().
 
 Image("exampleImage")
 .resizable()
 .frame(width: 250, height: 150)
 .overlay(
 Text("Hello, SwiftUI!")
 .font(.title)
 .foregroundColor(.white)
 .padding(),
 alignment: .bottom // Places text at bottom
 )
 
 - // MARK: - 2️⃣ Adding a Border: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .border(Color.blue, width: 5) // Blue border with 5px width
 
 - // MARK: - 3️⃣ Creating a Circular Image with a Border: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 150, height: 150)
 .clipShape(Circle())
 .overlay(Circle().stroke(Color.blue, lineWidth: 5)) // Adds circular border
 
 // MARK: - Applying Blend Modes and Opacity: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Adjusting Opacity: -
 Use .opacity() to make an image transparent.
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .opacity(0.5) // 50% transparent
 
 - // MARK: - 2️⃣ Applying Blend Modes: -
 Blend modes mix the image with the background.
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .blendMode(.multiply) // Creates a blending effect
 
 // MARK: - Rotating and Transforming Images: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Rotating an Image: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .rotationEffect(.degrees(45)) // Rotates 45 degrees
 
 - // MARK: - 2️⃣ Flipping an Image: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .scaleEffect(x: -1, y: 1) // Flips horizontally
 
 // MARK: - Grayscale and Color Effects: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Applying Grayscale: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .grayscale(1.0) // Converts to grayscale
 
 - // MARK: - 2️⃣ Applying Sepia Tone: -
 
 Image("exampleImage")
 .resizable()
 .frame(width: 200, height: 200)
 .colorMultiply(.brown) // Applies sepia effect
 
 // MARK: - Composing Images in Stacks: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Stacking Multiple Images: -
 You can layer images using ZStack (back-to-front order).
 
 ZStack {
 Image("backgroundImage")
 .resizable()
 .scaledToFill()
 
 Image("foregroundImage")
 .resizable()
 .frame(width: 100, height: 100)
 }
 .frame(width: 200, height: 200)
 
 - // MARK: - 2️⃣ Arranging Images Horizontally and Vertically: -
 
 HStack {
 Image(systemName: "star.fill")
 Image(systemName: "heart.fill")
 Image(systemName: "circle.fill")
 }
 .font(.largeTitle)
 
 ✅ HStack arranges images horizontally.
 ✅ Use VStack for vertical stacking.
 
 // MARK: - Image Animation in SwiftUI: -
 //###############################################################################
 
 Use .animation() to animate images.
 
 @State private var scale: CGFloat = 1.0
 
 Image(systemName: "star.fill")
 .font(.largeTitle)
 .scaleEffect(scale)
 .onTapGesture {
 withAnimation {
 scale = scale == 1.0 ? 1.5 : 1.0
 }
 }
 
 ✅ When tapped, the image scales up and down.
 
 */

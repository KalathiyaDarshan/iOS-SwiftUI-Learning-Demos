//
//  SizeAndPosition.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Size and Position Modifiers in SwiftUI -

/*
 
 SwiftUI provides several modifiers to control size, position, and alignment of views. You can use these modifiers to create responsive layouts.
 
 // MARK: - 1️⃣ .frame() – Setting Size of a View -
 //###############################################################################
 
 The .frame(width:height:alignment:) modifier sets a fixed width and height for a view.
 
 Text("Hello, SwiftUI!")
 .frame(width: 200, height: 50)
 .background(Color.blue)
 
 🔹 Effect: Creates a Text view of 200x50 size with a blue background.
 
 ✅ Alignment in .frame()
 
 By default, views are centered inside a frame. You can align them within the frame:
 
 Text("Hello, SwiftUI!")
 .frame(width: 200, height: 50, alignment: .leading)
 .background(Color.blue)
 
 ✅ Alignments: .leading, .trailing, .top, .bottom, .center
 
 // MARK: - 2️⃣ .padding() – Adding Space Around a View -
 //###############################################################################
 
 The .padding() modifier adds spacing around a view.
 
 Text("SwiftUI")
 .padding(20)
 .background(Color.green)
 
 🔹 Effect: Adds 20 points of padding on all sides.
 
 ✅ Padding on Specific Sides
 
 Text("SwiftUI")
 .padding(.horizontal, 30)  // Only left & right padding
 .padding(.vertical, 10)    // Only top & bottom padding
 
 ✅ Options: .horizontal, .vertical, .leading, .trailing, .top, .bottom
 
 // MARK: - 3️⃣ .offset(x:y:) – Moving a View -
 //###############################################################################
 
 The .offset(x:y:) modifier moves a view without changing its layout space.
 
 Text("Moved Text")
 .offset(x: 30, y: 50) // Move 30 points right, 50 points down
 .background(Color.yellow)
 
 🔹 Effect: Moves the text right and downward, but its original space remains.
 
 // MARK: - 4️⃣ .position(x:y:) – Placing a View at an Absolute Position -
 //###############################################################################
 
 The .position(x:y:) modifier moves a view to a specific position inside its parent.
 
 Text("Centered")
 .position(x: 150, y: 100)
 .background(Color.orange)
 
 🔹 Effect: Places the text at (150, 100) inside the parent view.
 
 ✅ Difference Between .offset() and .position()
 
 .offset(x:y:) - Moves a view relative to its original position
 .position(x:y:) - Moves a view to an absolute position inside its container
 
 // MARK: - 5️⃣ .alignmentGuide() – Custom Alignment -
 //###############################################################################
 
 ✅ Use .alignmentGuide() to fine-tune the alignment of views inside stacks.
 
 HStack {
 Text("Short")
 .alignmentGuide(.firstTextBaseline) { _ in 10 }
 Text("Longer Text")
 }
 
 🔹 Effect: Moves "Short" text upward by 10 points in the HStack.
 
 // MARK: - 6️⃣ .edgesIgnoringSafeArea() – Expand to Full Screen -
 //###############################################################################
 
 ✅ Use this modifier to make a view fill the whole screen, ignoring safe areas.
 
 Color.red
 .edgesIgnoringSafeArea(.all)
 
 🔹 Effect: The red color covers the entire screen, including the notch and home indicator areas.
 
 ✅ Options: .top, .bottom, .horizontal, .vertical, .all
 
 // MARK: - 7️⃣ .scaledToFit() vs. .scaledToFill() – Adjusting Images -
 //###############################################################################
 
 These modifiers scale images while maintaining aspect ratio.
 
 Image("example")
 .resizable()
 .scaledToFit()  // Fits inside frame without cropping
 .frame(width: 200, height: 200)
 
 ✅ Use .scaledToFill() to fill the entire frame (may crop).
 
 Image("example")
 .resizable()
 .scaledToFill()
 .frame(width: 200, height: 200)
 .clipped()  // Prevents overflow
 
 // MARK: - 8️⃣ .aspectRatio() – Controlling Aspect Ratio -
 //###############################################################################
 
 ✅ Use .aspectRatio() to define a custom width-to-height ratio.
 
 Rectangle()
 .frame(width: 200)
 .aspectRatio(16/9, contentMode: .fit)
 .background(Color.blue)
 
 🔹 Effect: The rectangle maintains a 16:9 ratio while fitting inside the frame.
 
 ✅ Content Modes: .fit (fits inside frame) & .fill (fills frame, may crop)
 
 // MARK: - 9️⃣ .geometryReader – Dynamic Positioning -
 //###############################################################################
 
 ✅ Use GeometryReader for flexible, screen-aware layouts.
 
 struct GeometryExample: View {
 var body: some View {
 GeometryReader { geometry in
 VStack {
 Text("Width: \(geometry.size.width)")
 Text("Height: \(geometry.size.height)")
 }
 }
 }
 }
 
 🔹 Effect: Gets the width and height of the parent view dynamically.
 
 // MARK: - ✅ Conclusion: -
 
 .frame(width:, height:) - Sets fixed width & height
 .padding() - Adds spacing around a view
 .offset(x:y:) - Moves a view relative to its position
 .position(x:y:) - Moves a view to an absolute position
 .alignmentGuide() - Fine-tunes alignment inside stacks
 .edgesIgnoringSafeArea() - Extends view to fill the screen
 .scaledToFit() - Maintains aspect ratio, fits within frame
 .scaledToFill() - Maintains aspect ratio, fills frame (cropped)
 .aspectRatio() - Defines custom aspect ratio
 .geometryReader - Reads dynamic size & position
 
 */

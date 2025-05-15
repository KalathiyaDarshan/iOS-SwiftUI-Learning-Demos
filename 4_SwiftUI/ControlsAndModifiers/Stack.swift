//
//  Stack.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - VStack, HStack, and ZStack -

/*
 
 // MARK: - 1️⃣ VStack – Vertical Stack (Top to Bottom) -
 //###############################################################################
 
 ✅ Use when you want to arrange views vertically (one below another).
 ✅ By default, aligns to the center and stacks from top to bottom.
 
 struct VStackExample: View {
 var body: some View {
 VStack(alignment: .leading, spacing: 20) {  // Align left, 20 spacing
 Text("Hello, SwiftUI!")
 .font(.title)
 Text("This is VStack Example")
 .foregroundColor(.gray)
 Button("Tap Me") {}
 .padding()
 .background(Color.blue)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 .padding()
 }
 }
 
 ✅ Modifiers for VStack:
 
 .alignment:
 Description: Aligns children (.leading, .center, .trailing)
 Example: VStack(alignment: .leading)
 
 .spacing:
 Description: Adjusts space between elements
 Example: VStack(spacing: 10)
 
 .frame(width:, height:):
 Description: Sets width & height
 Example: .frame(width: 200, height: 300)
 
 .padding():
 Description: Adds padding around VStack
 Example: .padding(20)
 
 // MARK: - 2️⃣ HStack – Horizontal Stack (Left to Right) -
 //###############################################################################
 
 ✅ Use when you want to arrange views horizontally (side by side).
 ✅ By default, aligns to the center and stacks from left to right.
 
 struct HStackExample: View {
 var body: some View {
 HStack(spacing: 15) {  // Space of 15 between items
 Image(systemName: "star.fill")
 .foregroundColor(.yellow)
 Text("HStack Example")
 .font(.headline)
 Spacer()
 Button("Click") {}
 .padding()
 .background(Color.green)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 .padding()
 }
 }
 
 ✅ Modifiers for HStack:
 
 .alignment:
 Description: Aligns children (.top, .center, .bottom)
 Example: HStack(alignment: .top)
 
 .spacing:
 Description: Adjusts space between elements
 Example: HStack(spacing: 10)
 
 .frame(width:, height:):
 Description: Sets width & height
 Example: .frame(width: 300, height: 50)
 
 .padding():
 Description: Adds padding around HStack
 Example: .padding()
 
 // MARK: - 3️⃣ ZStack – Overlapping Stack (Front to Back) -
 //###############################################################################
 
 ✅ Use when you want views to be overlapping on top of each other.
 ✅ First item is at the back, last item is at the front.
 
 struct ZStackExample: View {
 var body: some View {
 ZStack {
 Color.blue.edgesIgnoringSafeArea(.all)  // Background Color
 Circle()
 .fill(Color.white.opacity(0.3))
 .frame(width: 200, height: 200)
 Text("ZStack Example")
 .font(.title)
 .foregroundColor(.white)
 }
 }
 }
 
 ✅ Modifiers for ZStack:
 
 .alignment:
 Description: Aligns children (.top, .center, .bottom)
 Example: ZStack(alignment: .bottom)
 
 .frame(width:, height:):
 Description: Sets width & height
 Example: .frame(width: 200, height: 200)
 
 .background(Color):
 Description: Sets background color
 Example: .background(Color.gray)
 
 // MARK: - 4️⃣ Spacer() – Pushing Views Apart -
 //###############################################################################
 
 ✅ Use Spacer() to push views apart inside stacks.
 ✅ It takes all available space in the stack.
 
 struct SpacerExample: View {
 var body: some View {
 HStack {
 Text("Left")
 Spacer()  // Pushes the items apart
 Text("Right")
 }
 .padding()
 }
 }
 
 🔹 Effect: "Left" moves to the left, "Right" moves to the right.
 
 // MARK: - 5️⃣ Nesting Stacks – Complex Layouts -
 //###############################################################################
 
 ✅ You can combine VStack, HStack, and ZStack to create complex UIs.
 
 struct NestedStacksExample: View {
 var body: some View {
 ZStack {
 Color.gray.edgesIgnoringSafeArea(.all)  // Background
 
 VStack(spacing: 30) {
 Text("SwiftUI Stacks")
 .font(.largeTitle)
 .foregroundColor(.white)
 
 HStack(spacing: 20) {
 Image(systemName: "star.fill")
 .foregroundColor(.yellow)
 Text("HStack inside VStack")
 .font(.headline)
 }
 .padding()
 .background(Color.white.opacity(0.3))
 .cornerRadius(10)
 }
 }
 }
 }
 
 🔹 Explanation:
 
 ZStack for background layering.
 VStack for vertical organization.
 HStack inside VStack for side-by-side elements.
 
 // MARK: - 6️⃣ When to Use Which Stack? -
 //###############################################################################
 
 List items in a vertical column - VStack
 Buttons/icons in a horizontal row - HStack
 Overlapping elements (background image + text) - ZStack
 Aligning multiple views in a custom layout - Combination of all three
 
 */

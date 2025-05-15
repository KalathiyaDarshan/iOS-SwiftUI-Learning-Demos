//
//  Alignment_Spacing_Frame.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Alignment, Spacing and Frame -

/*
 
 // MARK: - 1️⃣ Alignment -
 //###############################################################################
 
 Alignment controls how views are positioned inside stacks and frames.
 
 Alignment in HStack, VStack, and ZStack
 ✅ Each stack has different alignment options:
 
 HStack (Horizontal Stack) → Aligns vertically
 VStack (Vertical Stack) → Aligns horizontally
 ZStack (Overlapping Views) → Aligns in both directions
 
 HStack(alignment: .top) {
 Text("Hello")
 .background(Color.red)
 Text("SwiftUI")
 .background(Color.blue)
 }
 
 ✅ Alignments in HStack: .top, .center, .bottom, .firstTextBaseline, .lastTextBaseline
 
 VStack(alignment: .leading) {
 Text("Left Aligned")
 Text("SwiftUI")
 }
 .background(Color.yellow)
 
 ✅ Alignments in VStack: .leading, .center, .trailing
 
 ZStack(alignment: .bottomTrailing) {
 Rectangle()
 .frame(width: 100, height: 100)
 .foregroundColor(.blue)
 Text("SwiftUI")
 .background(Color.green)
 }
 
 ✅ Alignments in ZStack: .topLeading, .topTrailing, .center, .bottomLeading, .bottomTrailing
 
 // MARK: - 2️⃣ Spacing -
 //###############################################################################
 
 Spacing defines the gap between views inside stacks.
 
 VStack(spacing: 20) { // 20 points of space between elements
 Text("Hello")
 Text("SwiftUI")
 }
 
 ✅ If no spacing is provided, SwiftUI uses default spacing.
 
 HStack(spacing: 50) {
 Text("Item 1")
 Text("Item 2")
 }
 
 ✅ A spacing of 50 creates a larger gap between elements.
 
 🔹 Dynamic Spacing: You can also use .padding() for custom spacing.
 
 // MARK: - 3️⃣ Frame -
 //###############################################################################
 
 Frames define how much space a view takes.
 
 Text("SwiftUI")
 .frame(width: 200, height: 50)
 .background(Color.blue)
 
 ✅ Sets the text's width to 200 and height to 50.
 
 🔹 Frame with Alignment
 
 Text("SwiftUI")
 .frame(width: 200, height: 50, alignment: .trailing)
 .background(Color.gray)
 
 ✅ The text moves to the right inside the frame.
 
 🔹 Available Alignments: .leading, .center, .trailing, .top, .bottom
 
 🔹 Flexible Frame with .maxWidth and .maxHeight
 
 Use .frame(maxWidth:, maxHeight:) to make views expand.
 
 Text("Expanding Text")
 .frame(maxWidth: .infinity, maxHeight: .infinity)
 .background(Color.green)
 
 ✅ The text expands to fill available space.
 
 🔹 Frame with .minWidth and .minHeight
 
 Text("Minimum Size")
 .frame(minWidth: 100, minHeight: 50)
 .background(Color.orange)
 
 ✅ Ensures a minimum size while allowing flexibility.
 
 // MARK: - ✅ Comparison -
 
 Alignment - Positions views inside stacks - VStack(alignment: .leading)
 Spacing - Controls gap between views - HStack(spacing: 20)
 Frame - Defines a view's size - .frame(width: 200, height: 100)
 
 // MARK: - ✅ Conclusion -
 
 Use alignment to position views inside stacks.
 Use spacing to adjust the gap between views.
 Use frame to control a view’s size.
 
 */

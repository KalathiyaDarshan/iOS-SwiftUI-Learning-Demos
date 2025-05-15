//
//  AbsoluteAndRelativePositioning.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Absolute and Relative Positioning in SwiftUI -

/*
 
 // MARK: - 1️⃣ Absolute Positioning -
 //###############################################################################
 
 Absolute positioning allows you to place a view at a specific coordinate in the container, using position().
 The position() modifier allows you to specify the exact x and y coordinates of a view relative to its parent view’s origin.
 
 Text("Absolute Position")
 .background(Color.blue)
 .position(x: 150, y: 200)
 
 ✅ Position the text at (150, 200) points relative to its parent view.
 
 X and Y coordinates are relative to the parent view's origin.
 Useful when you want precise control over where a view is placed.
 
 // MARK: - 2️⃣ Relative Positioning -
 //###############################################################################
 
 Relative positioning is more flexible and typically used in layouts like stacks and grids.
 The views are positioned relative to other views and take advantage of their context (like VStack, HStack).
 
 Using Alignment and Layout Modifiers (Relative Positioning):
 Stack-based layout modifiers like alignment and spacing provide relative positioning without absolute coordinates.
 
 HStack {
 Text("Left")
 Text("Center")
 .alignmentGuide(.leading) { d in d[.trailing] }
 Text("Right")
 }
 
 ✅ The views will adjust relative to each other based on alignment.
 
 VStack(alignment: .center, spacing: 10) {
 Text("First")
 Text("Second")
 .alignmentGuide(.leading) { d in d[.trailing] }
 Text("Third")
 }
 
 ✅ The second text view is shifted relative to the first one.
 
 ✅ Comparison: Absolute vs Relative Positioning
 
 Control:
 Absolute Positioning: Precise control over x, y coordinates
 Relative Positioning: Relative to other views or stack alignment
 
 Modifier:
 Absolute Positioning: position(x:, y:)
 Relative Positioning: alignmentGuide, padding, frame, etc.
 
 Use Case:
 Absolute Positioning: When you need exact positioning in a container
 Relative Positioning: When working with flexible layouts
 
 // MARK: - 3️⃣ Combining Both Approaches -
 //###############################################################################
 
 You can mix absolute and relative positioning when designing views.
 
 ZStack {
 Rectangle()
 .frame(width: 300, height: 300)
 .foregroundColor(.gray)
 
 Text("Centered")
 .position(x: 150, y: 150) // Absolute positioning
 Text("Aligned Left")
 .frame(maxWidth: .infinity, alignment: .leading) // Relative positioning
 }
 
 ✅ ZStack allows combining both: the first text is absolutely positioned, and the second is aligned relative to the parent’s width.
 
 ✅ Conclusion
 
 Absolute positioning: Provides precise coordinates to place views.
 Relative positioning: Positions views relative to each other using layout structures like stacks.
 
 */

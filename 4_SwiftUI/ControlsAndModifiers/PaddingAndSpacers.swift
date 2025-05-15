//
//  PaddingAndSpacers.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Padding and Spacers -

/*
 
 // MARK: - Padding -
 //###############################################################################
 
 Text("Hello, SwiftUI!")
 .padding()
 .background(Color.blue)
 
 ✅ Applies default padding (automatically adjusts based on context).
 
 - // MARK: - 1️⃣ Custom Padding -
 
 Text("Custom Padding")
 .padding(20) // Adds 20 points of padding on all sides
 .background(Color.green)
 
 ✅ Adds 20 points of padding around the text.
 
 - // MARK: - 2️⃣ Padding for Specific Edges -
 
 Text("Padding on Left & Right")
 .padding(.horizontal, 30) // Padding only on left & right
 .background(Color.orange)
 
 ✅ .horizontal affects both left and right.
 
 Other options:
 .vertical → Top & Bottom
 .leading, .trailing, .top, .bottom → Specific sides
 
 Text("Padding on Top")
 .padding(.top, 50)
 .background(Color.purple)
 
 // MARK: - Spacer -
 //###############################################################################
 
 A spacer takes up all available space between views, pushing them apart.
 
 HStack {
 Text("Left")
 Spacer()
 Text("Right")
 }
 
 ✅ The Spacer() pushes the texts to opposite ends.
 
 - // MARK: - 1️⃣ Multiple Spacers -
 
 HStack {
 Text("Item 1")
 Spacer()
 Text("Item 2")
 Spacer()
 Text("Item 3")
 }
 
 ✅ The items are evenly spaced.
 
 - // MARK: - 2️⃣ Fixed Size Spacer -
 
 You can control the space taken by a Spacer().
 
 HStack {
 Text("Left")
 Spacer().frame(width: 50) // Spacer takes only 50 points
 Text("Right")
 }
 
 ✅ The spacer only takes 50 points instead of expanding fully.
 
 // MARK: - 🔹 Padding vs. Spacer -
 
 Padding - Adds space around a view - .padding(20)
 Spacer - Adds flexible space between views - HStack { Spacer() }
 
 // MARK: - 🔹 Conclusion -
 
 Use padding to add controlled space around elements.
 Use spacers to create flexible space between views.
 
 */

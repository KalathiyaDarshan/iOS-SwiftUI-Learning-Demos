//
//  GeometryReader.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Geometry Reader -

/*
 
 The GeometryReader is a powerful view in SwiftUI that gives you access to the size and position of its parent container.
 It helps you dynamically position and size views based on their surroundings.
 It can be very useful for responsive layouts or when you need to adjust views based on their container's dimensions.
 
 The GeometryReader is a view container that provides a geometry proxy that contains the size and coordinates of the container (its parent view).
 
 GeometryReader { geometry in
 // Your content here
 }
 
 The geometry parameter gives you access to the container's size and position.
 You can then use this information to dynamically position or size your views.
 
 GeometryReader { geometry in
 Text("Geometry Reader Example")
 .font(.system(size: geometry.size.width / 10)) // Text size is 10% of the container's width
 .frame(width: geometry.size.width, height: geometry.size.height)
 .background(Color.blue)
 .foregroundColor(.white)
 }
 
 ✅ The text size will adjust based on the width of the container dynamically.
 
 // MARK: - Using GeometryReader for Positioning Views -
 //###############################################################################
 
 You can use the geometry proxy to position views based on the container’s size and position.
 
 GeometryReader { geometry in
 Circle()
 .frame(width: 100, height: 100)
 .position(x: geometry.size.width / 2, y: geometry.size.height / 2) // Centers the circle
 .foregroundColor(.red)
 }
 
 ✅ The circle is centered in the parent container, regardless of its size.
 
 // MARK: - Using GeometryReader with Safe Area Insets -
 //###############################################################################
 
 You can use the geometry proxy to adjust views to avoid the safe area (e.g., around notches and home indicators).
 
 GeometryReader { geometry in
 VStack {
 Text("Top-safe area inset: \(geometry.safeAreaInsets.top)")
 Spacer()
 }
 .padding()
 .background(Color.yellow)
 }
 
 ✅ This will show how much space is available for safe areas, allowing you to adjust layout for notches or rounded corners.
 
 // MARK: - GeometryReader with Multiple Views -
 //###############################################################################
 
 You can embed multiple views within a GeometryReader to position them dynamically based on the available space.
 
 GeometryReader { geometry in
 VStack {
 Text("Top View")
 .frame(width: geometry.size.width, height: geometry.size.height / 3)
 .background(Color.blue)
 
 Text("Middle View")
 .frame(width: geometry.size.width, height: geometry.size.height / 3)
 .background(Color.green)
 
 Text("Bottom View")
 .frame(width: geometry.size.width, height: geometry.size.height / 3)
 .background(Color.red)
 }
 }
 
 ✅ The three views take up equal parts of the parent view’s height.
 
 // MARK: - GeometryReader Considerations -
 //###############################################################################
 
 Use with care:
 Since GeometryReader gives the full available space, it can lead to unintended layouts if not used properly.
 For example, it can sometimes take up more space than expected, affecting its parent’s layout.
 
 Positioning & Sizing:
 Use it when you need dynamic layout behavior or need to adjust based on the container’s size (like responsive design).
 
 Performance:
 While GeometryReader is very powerful, it can sometimes be a bit more performance-intensive compared to simpler layout systems.
 Try to use it only when needed.
 
 // MARK: - Conclusion -
 //###############################################################################
 
 GeometryReader gives you size and position information of its parent container.
 It’s perfect for creating responsive layouts where views depend on the size of the container.
 It allows for dynamic resizing, positioning, and adjusting for safe areas.
 
 */

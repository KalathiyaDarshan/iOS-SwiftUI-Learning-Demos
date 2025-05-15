//
//  OrderOfModifiers.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Order of Modifiers in SwiftUI – Why It Matters? -

/*
 
 In SwiftUI, the order of modifiers matters because each modifier applies changes sequentially.
 Some modifiers affect layout first, while others apply visual effects later.
 
 // MARK: - Understanding Modifier Order with Examples: -
 //###############################################################################
 
 Let's take a simple Text view and apply padding, background, and border.
 
 // MARK: - Example 1: Expected Layout -
 
 Text("Hello, SwiftUI!")
 .padding()
 .background(Color.yellow)
 .border(Color.red, width: 5)
 
 How It Works?
 1️⃣ Padding first → Adds space around the text.
 2️⃣ Background next → Applies inside the padding.
 3️⃣ Border last → Wraps around the background and padding.
 
 🔹 Final Look: The red border includes the yellow background and padding.
 
 // MARK: - Example 2: Changing the Modifier Order -
 
 Text("Hello, SwiftUI!")
 .background(Color.yellow)
 .padding()
 .border(Color.red, width: 5)
 
 How It Works?
 1️⃣ Background first → Only applies to the text (ignores padding).
 2️⃣ Padding next → Adds spacing outside the background.
 3️⃣ Border last → Wraps only around the padded area.
 
 🔹 Final Look: The yellow background is only behind the text (not including the padding).
 
 // MARK: - Modifier Order & Layout Changes: -
 //###############################################################################
 
 Some modifiers affect layout, while others only affect appearance.
 
 // MARK: - Example 3: Applying frame Before vs. After background -
 
 Text("Hello, SwiftUI!")
 .frame(width: 200, height: 100)
 .background(Color.green)
 
 ✅ The frame reserves space first (200x100), then the background fills that space.
 
 // MARK: - Example 4: Applying background Before frame -
 
 Text("Hello, SwiftUI!")
 .background(Color.green)
 .frame(width: 200, height: 100)
 
 ❌ The background only applies to the text size, then frame expands beyond it.
 
 🔹 Fix: Always apply frame before background.
 
 // MARK: - Visual Effects & Order Importance: -
 //###############################################################################
 
 // MARK: - Example 5: Applying opacity Before vs. After background -
 
 Text("Hello, SwiftUI!")
 .background(Color.blue)
 .opacity(0.5)
 
 ✅ The entire text and background become 50% transparent.
 
 Text("Hello, SwiftUI!")
 .opacity(0.5)
 .background(Color.blue)
 
 ❌ The text becomes transparent first, but the background remains solid.
 
 // MARK: - Example 6: Applying clipShape Before vs. After padding -
 
 Text("Hello, SwiftUI!")
 .padding()
 .background(Color.blue)
 .clipShape(Circle())
 
 ✅ Padding and background are included in the circle.
 
 Text("Hello, SwiftUI!")
 .clipShape(Circle())
 .padding()
 .background(Color.blue)
 
 ❌ The text is clipped first, but padding applies outside the circle.
 
 // MARK: - Common Modifier Order Mistakes & Fixes: -
 //###############################################################################
 
 ❌ Incorrect Order:
 .background(Color.green).padding()
 
 ✅ Correct Order:
 .padding().background(Color.green)
 
 Why?
 Background should include padding.
 
 ❌ Incorrect Order:
 .opacity(0.5).background(Color.blue)
 
 ✅ Correct Order:
 .background(Color.blue).opacity(0.5)
 
 Why?
 Opacity should affect both text & background.
 
 ❌ Incorrect Order:
 .border(Color.red).frame(width: 200, height: 100)
 
 ✅ Correct Order:
 .frame(width: 200, height: 100).border(Color.red)
 
 Why?
 Border should include frame size.
 
 ❌ Incorrect Order:
 .clipShape(Circle()).padding()
 
 ✅ Correct Order:
 .padding().clipShape(Circle())
 
 Why?
 Padding should be inside the clipped shape.
 
 // MARK: - Best Practices for Modifier Order: -
 //###############################################################################
 
 ✔ Apply layout modifiers first (frame, padding, alignment).
 ✔ Then apply appearance modifiers (background, border, clipShape).
 ✔ Apply effects last (opacity, shadow, rotation).
 
 */

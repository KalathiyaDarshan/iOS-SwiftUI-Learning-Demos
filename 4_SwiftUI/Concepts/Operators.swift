//
//  Operators.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Operators in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Standard Operators (Same in Swift & SwiftUI) -
 //###############################################################################
 
 Arithmetic:
 Operators: +, -, *, /, %
 Example: let sum = 5 + 3
 
 Comparison:
 Operators: ==, !=, <, >, <=, >=
 Example: if a == b {}
 
 Logical:
 Operators: &&, `
 Example:
 
 Assignment:
 Operators: =, +=, -=, *=, /=
 Example: x += 5
 
 Range:
 Operators: ... (closed), ..< (half-open)
 Example: for i in 1...5 {}
 
 Nil-Coalescing:
 Operators: ??
 Example: let name = userName ?? "Guest"
 
 // MARK: - 2️⃣ Custom Operators in SwiftUI (View Composition) -
 //###############################################################################
 
 2.1 The + Operator for Colors
 
 In Swift, + is for addition.
 In SwiftUI, it can combine colors:
 
 let combinedColor = Color.red + Color.blue // Works in SwiftUI
 🔹 This is possible because SwiftUI defines + for Color.
 
 2.2 The * Operator for Scaling Fonts
 
 SwiftUI uses * to scale fonts dynamically:
 
 Text("Hello")
 .font(.system(size: 20) * 1.5) // ✅ Enlarges font by 1.5x
 
 ✔️ Swift doesn’t allow * for UIFont, but SwiftUI does!
 
 // MARK: - 3️⃣ The . Operator in Swift vs. SwiftUI -
 //###############################################################################
 
 🔹 Swift Example
 struct Person {
 var name = "John"
 }
 
 let user = Person()
 print(user.name) // ✅ Accessing property
 
 🔹 SwiftUI Example
 Text("Hello")
 .font(.largeTitle) // ✅ View modifiers use `.` chaining
 .foregroundColor(.blue)
 
 ✔️ The . (dot) operator is used for accessing properties and methods.
 ✔️ SwiftUI chains view modifiers with . for readability.
 
 // MARK: - 4️⃣ The == and != Operators for Views in SwiftUI -
 //###############################################################################
 
 Unlike Swift, SwiftUI allows direct comparison of views:
 if Text("Hello") == Text("Hello") {
 print("Views are equal!") // ✅ Works in SwiftUI
 }
 🚀 This is not possible with UIKit’s UILabel.
 
 // MARK: - 5️⃣ The @ Operator in SwiftUI (@State, @Binding, etc.) -
 //###############################################################################
 
 ✔️ SwiftUI introduces property wrappers using @, which don’t exist in standard Swift.
 ✔️ Swift has @available, but @State, @Binding, etc., are exclusive to SwiftUI.
 
 struct ContentView: View {
 @State private var isOn = false // ✅ @State is a SwiftUI feature
 
 var body: some View {
 Toggle("Switch", isOn: $isOn)
 }
 }
 
 */

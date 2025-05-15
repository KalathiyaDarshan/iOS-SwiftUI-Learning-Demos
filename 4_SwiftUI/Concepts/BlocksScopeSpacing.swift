//
//  BlocksScopeSpacing.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Blocks, Scope, and Spacing in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Blocks in Swift vs. SwiftUI -
 //###############################################################################
 
 🔹 Function Blocks in Swift
 func greet(name: String) {
 print("Hello, \(name)!")
 }
 
 🔹 Function Blocks in SwiftUI
 struct ContentView: View {
 var body: some View {
 VStack {
 greet()
 }
 }
 
 func greet() -> some View {
 Text("Hello, SwiftUI!")
 }
 }
 
 ✅ Difference?
 In Swift, functions return values directly.
 In SwiftUI, functions return views (some View).
 
 🔹 Control Flow Blocks in Swift
 if age > 18 {
 print("Adult")
 } else {
 print("Minor")
 }
 
 for i in 1...5 {
 print(i)
 }
 
 🔹 Control Flow in SwiftUI
 struct ContentView: View {
 let isPremiumUser = true
 
 var body: some View {
 VStack {
 if isPremiumUser {
 Text("Welcome, Premium User!") // ✅ Works in SwiftUI
 } else {
 Text("Upgrade to Premium!")
 }
 }
 }
 }
 
 ✅ Difference?
 
 SwiftUI uses if inside body, but no switch or guard directly.
 For loops are replaced by ForEach in SwiftUI.
 
 struct ListView: View {
 let numbers = [1, 2, 3, 4, 5]
 
 var body: some View {
 VStack {
 ForEach(numbers, id: \.self) { num in
 Text("Number: \(num)")
 }
 }
 }
 }
 
 ✔ SwiftUI prefers ForEach instead of for-in loops for reactivity.
 
 // MARK: - 2️⃣ Scope in Swift vs. SwiftUI -
 //###############################################################################
 
 🔹 Scope Example in Swift
 let globalValue = 10 // Global scope
 
 func someFunction() {
 let localValue = 5 // Function scope
 print(globalValue + localValue) // ✅ Works
 }
 
 ✔ Local variables cannot be accessed outside a function.
 
 🔹 Scope in SwiftUI (@State, @Binding)
 ✔ In SwiftUI, state variables must be inside a View’s struct, but can’t be modified directly in subviews.
 
 struct ContentView: View {
 @State private var count = 0 // View Scope
 
 var body: some View {
 VStack {
 Text("Count: \(count)")
 Button("Increase") {
 count += 1 // ✅ Allowed in @State
 }
 }
 }
 }
 
 🔹 Why use @State?
 If count were a normal var, the UI wouldn’t update.
 
 // MARK: - 3️⃣ Spacing in Swift vs. SwiftUI -
 //###############################################################################
 
 🔹 Spacing in Swift (Standard Formatting)
 func addNumbers(a: Int, b: Int) -> Int {
 return a + b
 }
 
 let sum = addNumbers(a: 5, b: 10)
 
 ✔ Uses consistent indentation and spacing.
 
 🔹 Spacing in SwiftUI
 SwiftUI uses modifiers like Spacer(), padding(), and frame() for visual spacing.
 
 struct ContentView: View {
 var body: some View {
 VStack(spacing: 20) { // Adds space between elements
 Text("Hello, SwiftUI!")
 .padding()  // Adds padding around text
 .frame(width: 200, height: 50) // Sets fixed frame
 
 Spacer() // Pushes content apart
 }
 }
 }
 
 ✔ Uses spacing modifiers instead of blank lines.
 
 // MARK: - 🔹 Summary -
 Blocks ({}):
 Swift: Used in functions, loops, closures
 SwiftUI: Used in Views, closures for modifiers
 
 Function Scope:
 Swift: Variables exist only inside functions
 SwiftUI: Same in SwiftUI
 
 View Scope:
 Swift: Not applicable
 SwiftUI: Uses @State, @Binding, @Environment
 
 For Loop:
 Swift: Uses for-in loops
 SwiftUI: Uses ForEach instead of for-in
 
 Spacing in UI:
 Swift: Not applicable
 SwiftUI: Uses .padding(), .frame(), Spacer()
 
 */

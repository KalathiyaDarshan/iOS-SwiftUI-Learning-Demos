//
//  Optionals.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Optionals in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Optionals in Swift -
 //###############################################################################
 
 An optional in Swift is a type that can hold either a value or nil. It helps avoid crashes when a variable might not have a value.
 
 var name: String? // Can be nil
 name = "John"
 print(name) // Optional("John")
 
 To access the value safely, we use optional binding, optional chaining, or force unwrapping.
 
 1️⃣ Optional Binding (Safe Way)
 if let unwrappedName = name {
 print("Name is \(unwrappedName)")
 } else {
 print("No name available")
 }
 
 ✔️ Safely unwraps the optional before using it.
 
 2️⃣ Optional Chaining (Safe Way)
 let length = name?.count
 print(length) // Optional(4)
 
 ✔️ If name is nil, length remains nil instead of crashing.
 
 3️⃣ Force Unwrapping (Not Safe 🚨)
 print(name!) // Crashes if name is nil ❌
 
 🚨 Use ! only when you're 100% sure the value isn't nil.
 
 // MARK: - 2️⃣ Optionals in SwiftUI -
 //###############################################################################
 
 SwiftUI relies on optionals for data binding and views, but it introduces property wrappers (@State, @Binding, @Environment, etc.) to handle state.
 
 ✅ Example: Optional State Variable (@State)
 struct ContentView: View {
 @State private var name: String? = nil // Optional String
 
 var body: some View {
 VStack {
 if let unwrappedName = name {
 Text("Hello, \(unwrappedName)!") // ✅ Unwrapped safely
 } else {
 Text("No name provided")
 }
 
 Button("Set Name") {
 name = "SwiftUI User" // Assigns a value
 }
 }
 }
 }
 
 ✔️ SwiftUI handles optionals inside @State, but we must unwrap them safely for UI updates.
 
 // MARK: - 3️⃣ Optional Views in SwiftUI -
 //###############################################################################
 
 In SwiftUI, a View? can be used to show or hide UI elements dynamically.
 
 ✅ Example: Optional View
 struct ContentView: View {
 var message: String? = nil // Optional String
 
 var body: some View {
 VStack {
 if let message = message {
 Text(message) // ✅ Shows only if message is not nil
 } else {
 Text("No message available")
 }
 }
 }
 }
 
 ✔️ SwiftUI prefers conditional views over nil-checking views.
 
 // MARK: - 4️⃣ Using nil to Show/Hide Views in SwiftUI -
 //###############################################################################
 
 Instead of handling optionals manually, SwiftUI allows optional views to dynamically disappear when nil.
 
 struct ContentView: View {
 var optionalText: String? = nil
 
 var body: some View {
 VStack {
 Text(optionalText ?? "Default Text") // ✅ Uses `??` for default value
 }
 }
 }
 
 ✔️ ?? (Nil-Coalescing Operator) provides a default value when nil.
 
 // MARK: - 🔹 Summary -
 Basic Optionals:
 Swift: var x: Int? = nil
 SwiftUI: Same, but used in @State, @Binding, etc.
 
 Optional Binding:
 Swift: if let value = x {}
 SwiftUI: Used in UI updates inside body
 
 Optional Chaining:
 Swift: let length = name?.count
 SwiftUI: Used for optional views (someView?.modifier())
 
 Force Unwrapping (!):
 Swift: Dangerous ❌
 SwiftUI: Not recommended in views
 
 Default Value (??):
 Swift: let value = x ?? 0
 SwiftUI: Used in Text(optionalText ?? "Default")
 
 Hiding Views:
 Swift: Not applicable
 SwiftUI: Optional views disappear when nil
 
 */

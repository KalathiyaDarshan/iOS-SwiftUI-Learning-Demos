//
//  VariablesAndTypes.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Variables and Types in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ In Swift (Regular Usage) -
 
 var name = "Alice" // Mutable variable
 let age = 25       // Immutable constant
 
 struct Person {
 var name: String
 let age: Int
 }
 
 var person = Person(name: "Alice", age: 25)
 person.name = "Bob" // ✅ Allowed (mutable)
 person.age = 30     // ❌ Error (constant)
 
 // MARK: - 2️⃣ In SwiftUI (With Property Wrappers) -
 
 SwiftUI reactively updates the UI when specific variables change.
 Using @State (Triggers UI Update when @State variable change)
 
 struct ContentView: View {
 @State private var count = 0
 
 var body: some View {
 VStack {
 Text("Count: \(count)")
 Button("Increment") {
 count += 1  // ✅ UI updates when changed
 }
 }
 }
 }
 
 // MARK: - 3️⃣ Why use @State? -
 Without @State, SwiftUI won’t detect changes and the UI won’t update.
 
 // MARK: - 4️⃣ Using @Binding (Pass Mutable State to Child View) -
 struct ParentView: View {
 @State private var isOn = false
 
 var body: some View {
 ToggleView(isOn: $isOn) // Passes binding
 }
 }
 
 struct ToggleView: View {
 @Binding var isOn: Bool
 
 var body: some View {
 Toggle("Switch", isOn: $isOn)
 }
 }
 
 // MARK: - 5️⃣ Why use @Binding? -
 Allows the child view to modify the parent’s state.
 
 // MARK: - 6️⃣ Using @ObservedObject (External Class State) -
 class UserData: ObservableObject {
 @Published var username = "Alice"
 }
 
 struct ContentView: View {
 @ObservedObject var user = UserData()
 
 var body: some View {
 VStack {
 Text("User: \(user.username)")
 Button("Change Name") {
 user.username = "Bob" // ✅ UI updates
 }
 }
 }
 }
 
 // MARK: - 7️⃣ Why use @ObservedObject? -
 Used when data is shared between multiple views.
 Unlike @State, it persists beyond the view lifecycle.
 
 // MARK: - 8️⃣ Struct in Swift -
 struct Car {
 var model: String
 }
 
 var car = Car(model: "Tesla")
 
 ✅ Used for value-based objects.
 
 // MARK: - 9️⃣ Struct in SwiftUI (Views) -
 struct ContentView: View {
 var body: some View {
 Text("Hello, SwiftUI!")
 }
 }
 
 ✅ SwiftUI Views are structs, meaning they are lightweight and immutable.
 
 // MARK: - 1️⃣0️⃣ Class in Swift -
 class Person {
 var name: String
 init(name: String) {
 self.name = name
 }
 }
 
 ✅ Used when you need reference-based behavior.
 
 // MARK: - 1️⃣1️⃣ Class in SwiftUI (ObservableObject) -
 class Counter: ObservableObject {
 @Published var value = 0
 }
 
 ✅ SwiftUI uses classes only for observed data models.
 
 // MARK: - 🔹 Summary -
 Variables:
 Swift: var, let
 SwiftUI: @State, @Binding, @ObservedObject
 
 Constants:
 Swift: let
 SwiftUI: let (Immutable, used in Views)
 
 Types:
 Swift: struct, class, enum
 SwiftUI: struct for views, class for ObservableObject
 
 State Management:
 Swift: Regular properties
 SwiftUI: Uses property wrappers (@State, @Binding, etc.)
 
 Data Persistence:
 Swift: Regular instances
 SwiftUI: @ObservedObject for external data
 
 */

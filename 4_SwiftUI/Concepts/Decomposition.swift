//
//  Decomposition.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Decomposition in Swift vs. SwiftUI -

/*
 
 Decomposition refers to the practice of breaking down complex problems, systems, or structures into smaller, more manageable components.
 This principle is used extensively in both Swift and SwiftUI, though the focus in each case differs slightly due to the context in which they are applied.
 
 In Swift, decomposition is often centered around organizing code into smaller, reusable components such as classes, structs, functions, and protocols.
 In SwiftUI, decomposition is more about breaking down complex views into smaller, reusable view components that can be composed and reused efficiently.
 
 // MARK: - 1️⃣ Decomposition in Swift -
 //###############################################################################
 
 In Swift, decomposition is used to create modular, maintainable, and testable code.
 By breaking down larger tasks into smaller units, you can better manage complexity, improve code reusability, and separate concerns.
 
 // MARK: - ✅ Common Forms of Decomposition in Swift: -
 
 Functions:
 Breaking logic into smaller functions for easier maintenance and testing.
 
 Structs and Classes:
 Creating smaller, focused structs and classes for specific responsibilities
 (e.g., separating data models, network handling, or UI logic).
 
 Protocols:
 Defining reusable abstractions to enable polymorphism and decouple components.
 
 Enumerations:
 Using enums to represent different states or options in a more structured manner.
 
 // Data model struct
 struct User {
 var name: String
 var age: Int
 }
 
 // Function to process user data
 func processUser(_ user: User) {
 print("Processing user: \(user.name), Age: \(user.age)")
 }
 
 // Function to print a welcome message
 func welcomeMessage(for user: User) -> String {
 return "Welcome, \(user.name)!"
 }
 
 // Example of using functions and structs to decompose logic
 let user = User(name: "Alice", age: 25)
 processUser(user)
 let message = welcomeMessage(for: user)
 print(message)
 
 Here, we have:
 A User struct to encapsulate user data.
 Functions like processUser and welcomeMessage to handle specific tasks.
 The logic is decomposed into smaller units, making the code more modular, reusable, and testable.
 
 // MARK: - ✅ Key Points in Swift: -
 
 Decomposition is about breaking down complex logic into smaller, testable and reusable pieces.
 It helps in encapsulating responsibilities, such as separating UI logic from business logic or network handling.
 Protocols and extensions are often used to abstract behavior, providing cleaner and more flexible code.
 
 2. Decomposition in SwiftUI
 
 In SwiftUI, decomposition is applied to views. The framework promotes building UIs by composing smaller, reusable view components.
 By breaking down large views into smaller subviews, SwiftUI encourages a declarative UI approach where each component represents a piece of the UI with its state and behavior.
 
 // MARK: - ✅ Common Forms of Decomposition in SwiftUI: -
 
 Views:
 Breaking down complex UI elements into smaller, reusable views.
 
 Modifiers:
 Creating custom view modifiers to abstract repeated styling and behavior.
 
 View Models:
 Using MVVM (Model-View-ViewModel) architecture to manage the state and logic of the views.
 
 import SwiftUI
 
 // Custom view for a greeting message
 struct GreetingView: View {
 var name: String
 
 var body: some View {
 Text("Hello, \(name)!")
 .font(.largeTitle)
 .padding()
 }
 }
 
 // Main view using the custom view
 struct ContentView: View {
 var body: some View {
 VStack {
 GreetingView(name: "Alice")
 GreetingView(name: "Bob")
 }
 }
 }
 
 // Preview to see the content in the simulator
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 In this example:
 GreetingView is a small, reusable view that displays a greeting message.
 ContentView is the main view that composes smaller views together to form a larger UI.
 By decomposing the UI into smaller views, SwiftUI allows for modularization and reusability.
 
 // MARK: - ✅ Key Points in SwiftUI: -
 
 Views are the fundamental building blocks, and decomposition allows for creating reusable components.
 Modifiers enable the reuse of styles and behaviors across multiple views.
 View Models (in MVVM) separate the UI logic from the view, which helps in decomposing responsibilities and improving the maintainability of the app.
 
 // MARK: - 3️⃣ Key Differences: Decomposition in Swift vs. SwiftUI -
 //###############################################################################
 
 Focus:
 Swift: Organizing code into reusable units (functions, structs, classes, etc.).
 SwiftUI: Organizing UI into smaller, reusable view components.
 
 Components:
 Swift: Functions, structs, classes, protocols, enums.
 SwiftUI: Views, view modifiers, view models.
 
 Modularity:
 Swift: Breaking down logic and responsibilities into small parts.
 SwiftUI: Breaking down UI into smaller, modular view components.
 
 Reusability:
 Swift: Reusable logic through functions, structs, and classes.
 SwiftUI: Reusable views and view components.
 
 Abstraction:
 Swift: Using protocols and functions to abstract complex logic.
 SwiftUI: Using view modifiers and view models to abstract UI components and logic.
 
 State Management:
 Swift: State is typically managed using variables and data structures.
 SwiftUI: State is managed using @State, @ObservedObject, @Binding, etc.
 
 UI Composition:
 Swift: Not directly related to UI composition.
 SwiftUI: Focused on UI composition and decomposition.
 
 // MARK: - 🔹 Summary -
 //###############################################################################
 
 In Swift, decomposition is about organizing code—functions, classes, structs, and protocols—into smaller, more manageable parts to improve readability, maintainability, and reusability. You focus on breaking down business logic, network handling, and state management.
 
 In SwiftUI, decomposition is all about organizing UI components—views, modifiers, and view models—into smaller, reusable pieces to create a declarative UI. It allows you to compose views efficiently and manage view states while ensuring your UI is clean and modular.
 
 Both frameworks embrace decomposition as a key practice, but while Swift focuses on the logic and data side of things, SwiftUI applies decomposition to the UI layer.
 
 */

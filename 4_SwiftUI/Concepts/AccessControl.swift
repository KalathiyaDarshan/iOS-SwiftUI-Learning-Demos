//
//  AccessControl.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Access Control in Swift vs. SwiftUI -

/*
 
 Access control in Swift and SwiftUI determines how entities like classes, structures, properties, methods, and variables can be accessed within different parts of an application or module.
 In both Swift and SwiftUI, access control mechanisms are used to control the visibility and encapsulation of components.
 However, SwiftUI has specific scenarios where access control plays a role, especially when it comes to data binding and view models.
 
 // MARK: - 1️⃣ Access Control in Swift -
 //###############################################################################
 
 Swift provides 5 levels of access control:
 
 1. open: The highest level of access, allowing usage of the class or method from any module, even outside the defining module.
 2. public: Allows access from any module but does not permit subclassing or overriding outside the module.
 3. internal (default): Restricts access to within the same module.
 4. fileprivate: Limits access to within the defining file.
 5. private: Limits access to the enclosing scope (usually the enclosing class, struct, or method).
 
 // Open class, accessible anywhere
 open class Car {
 // Public property, accessible outside the module
 public var model: String
 
 // Internal method, accessible within the module
 internal func startEngine() {
 print("Engine started!")
 }
 
 // File-private method, accessible only in the same file
 fileprivate func checkFuel() {
 print("Fuel check")
 }
 
 // Private method, accessible only within this class
 private func unlockCar() {
 print("Car unlocked")
 }
 
 init(model: String) {
 self.model = model
 }
 }
 
 // MARK: - 2️⃣ Access Control in SwiftUI -
 //###############################################################################
 
 In SwiftUI, access control works similarly to Swift but is typically used for view models, state management, and UI components.
 SwiftUI relies heavily on data binding (@State, @Binding, @ObservedObject, @EnvironmentObject), so access control is especially relevant in terms of how data is passed to and from views and how state is managed.
 
 import SwiftUI
 
 class UserData: ObservableObject {
 // Public property to bind the user data to the view
 @Published var username: String = "JohnDoe"
 
 // Private method for internal use within the class
 private func updateUsername(newName: String) {
 self.username = newName
 }
 }
 
 struct ContentView: View {
 // Observing user data
 @ObservedObject var userData: UserData
 
 var body: some View {
 VStack {
 Text("Username: \(userData.username)")
 Button(action: {
 // This will not directly call `updateUsername` since it is private
 // userData.updateUsername(newName: "JaneDoe") // Error
 }) {
 Text("Change Username")
 }
 }
 }
 }
 
 ObservableObject is typically used with access control to manage state for views.
 @Published makes a property observable and ensures that changes are propagated to views.
 Private methods are still applicable to data logic within a class or view model, restricting direct access to certain methods.
 
 // MARK: - 3️⃣ Practical Differences Between Swift and SwiftUI Access Control -
 //###############################################################################
 
 Swift Access Control:
 
 Encapsulation: Ensuring that only the intended code can access or modify certain parts of the application.
 Modularity: Exposing or hiding implementation details across modules.
 Data Modeling: Restricting or allowing access to methods and properties for controlling interactions with data models.
 
 SwiftUI Access Control:
 
 Data Binding and State Management: Managing how data flows between views (e.g., @State, @ObservedObject), ensuring state is controlled and mutable only when needed.
 UI Component Exposure: Views are structs, and typically, SwiftUI views don’t have significant access control needs except for state management and data observation.
 
 // MARK: - 4️⃣ Key Points of Difference -
 //###############################################################################
 
 Primary Usage:
 Swift: Class, struct, method, property access control
 SwiftUI: Data binding and view model access control
 
 Visibility:
 Swift: Used for controlling access across modules and files
 SwiftUI: Used for controlling how views and data are updated or observed
 
 State Management:
 Swift: Classes and structs, no intrinsic state management
 SwiftUI: @State, @Binding, @ObservedObject, @EnvironmentObject for reactive data handling
 
 Typical Modifiers:
 Swift: open, public, internal, private, fileprivate
 SwiftUI: Usually focuses on restricting access to data or view model methods
 
 Usage in Views:
 Swift: Views are typically public or internal in the same module
 SwiftUI: View models or stateful data can be marked private or internal based on access needs
 
 // MARK: - 🔹 Summary -
 //###############################################################################
 
 Structs:
 Swift: Used for data models, business logic (encapsulation).
 SwiftUI: Used for views, UI components (value types).
 
 Classes:
 Swift: Used for data models, logic, reference types (inheritance).
 SwiftUI: Used for data models and view models (ObservableObject).
 
 Enums:
 Swift: Used for states, options, and configurations.
 SwiftUI: Used for view states, UI logic.
 
 State Management:
 Swift: Controlled using internal methods and variables.
 SwiftUI: @State, @Binding, @ObservedObject, etc., for UI updates.
 
 Access Control:
 Swift: Focused on limiting access across files and modules.
 SwiftUI: More focused on binding and observing data to UI elements.
 
 */

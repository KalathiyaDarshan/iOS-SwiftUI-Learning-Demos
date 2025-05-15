//
//  Protocols.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Protocols in Swift vs. SwiftUI -

/*
 
 Protocols are a fundamental concept in Swift used to define a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
 Protocols are widely used in Swift to promote code abstraction, flexibility, and reusability.
 In SwiftUI, protocols also play an essential role but are typically seen in view composition, state management, and UI control.
 
 // MARK: - 1️⃣ Protocols in Swift -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Protocols in Swift: -
 
 In Swift, protocols define a set of methods or properties that a class, struct, or enum must implement if it conforms to that protocol.
 Protocols provide a way to ensure that certain functionality is present across different types without requiring inheritance.
 
 // Protocol definition
 protocol Vehicle {
 var make: String { get }
 var model: String { get }
 func startEngine()
 }
 
 // Conforming to the protocol
 class Car: Vehicle {
 var make: String
 var model: String
 
 init(make: String, model: String) {
 self.make = make
 self.model = model
 }
 
 func startEngine() {
 print("Engine started")
 }
 }
 
 let myCar = Car(make: "Tesla", model: "Model S")
 myCar.startEngine()  // Output: Engine started
 
 // MARK: - ✅ Common Use Cases for Protocols in Swift: -
 
 Defining common behavior:
 Protocols are used to define shared behavior or functionality between classes, structs, and enums.
 
 Code abstraction and flexibility:
 Protocols help decouple code and make it more flexible by allowing different types to conform to the same protocol.
 
 Delegation pattern:
 Protocols are commonly used in the delegation pattern to communicate between objects, such as when passing data between view controllers.
 
 // MARK: - 2️⃣ Protocols in SwiftUI -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Protocols in SwiftUI: -
 
 In SwiftUI, protocols are used in a similar way as in Swift, but their primary focus is more on defining views, state management, and data flow.
 SwiftUI views themselves are often protocol-oriented and are designed to work seamlessly with protocols like View, Identifiable, and Animatable.
 
 import SwiftUI
 
 // Defining a protocol for custom view types
 protocol CustomView {
 var title: String { get }
 func renderView() -> some View
 }
 
 // Conforming to the protocol with a SwiftUI view
 struct MyView: View, CustomView {
 var title: String
 
 func renderView() -> some View {
 Text(title)
 .font(.largeTitle)
 .foregroundColor(.blue)
 }
 
 var body: some View {
 renderView()
 }
 }
 
 struct ContentView: View {
 var body: some View {
 MyView(title: "Hello, SwiftUI!")
 }
 }
 
 // MARK: - ✅ Example 1: Custom View Protocols -
 You can use protocols to define custom views in SwiftUI, which can then be reused across different places in your app.
 
 import SwiftUI
 
 // Define a protocol for a custom view
 protocol Displayable {
 var text: String { get }
 func display() -> some View
 }
 
 // Conform to the protocol with a SwiftUI view
 struct GreetingView: View, Displayable {
 var text: String
 
 func display() -> some View {
 Text(text)
 .font(.title)
 .foregroundColor(.green)
 }
 
 var body: some View {
 display()
 }
 }
 
 struct ContentView: View {
 var body: some View {
 GreetingView(text: "Welcome to SwiftUI!")
 }
 }
 
 // MARK: - ✅ Example 2: State Management and Protocols -
 In SwiftUI, protocols can be used to manage state or to define common behavior for objects, especially when dealing with data models that conform to ObservableObject.
 
 import SwiftUI
 
 // Protocol to manage user data
 protocol UserDataProtocol: ObservableObject {
 var username: String { get set }
 }
 
 // Conform to protocol with a class
 class UserData: UserDataProtocol {
 @Published var username: String = "JohnDoe"
 }
 
 struct ContentView: View {
 @StateObject var userData: UserData = UserData()
 
 var body: some View {
 VStack {
 Text("Username: \(userData.username)")
 Button(action: {
 userData.username = "JaneDoe"
 }) {
 Text("Change Username")
 }
 }
 }
 }
 
 // MARK: - ✅ Common Use Cases for Protocols in SwiftUI: -
 
 Custom Views:
 Protocols are used in SwiftUI to define reusable custom view types and enforce that certain properties or methods exist across different views.
 
 State Management:
 @State, @Binding, and other property wrappers in SwiftUI rely on protocols to manage state updates and ensure views are updated reactively.
 
 View Composition:
 SwiftUI relies heavily on view composition, and protocols are used to ensure that views conform to a view hierarchy and can be used interchangeably.
 
 // MARK: - 3️⃣ Key Differences Between Protocols in Swift and SwiftUI -
 //###############################################################################
 
 Primary Purpose:
 Swift: Define behavior and properties that types must implement. Define common functionality or behavior across types.
 SwiftUI: Define behavior and properties for views and state management. Define common properties or methods for views and UI components.
 
 Common Use Cases:
 Swift: Abstraction, delegation, shared functionality, code reusability.
 SwiftUI: Defining custom views, state management, reusable view components.
 
 View and UI Role:
 Swift: Not directly involved with views.
 SwiftUI: Commonly used to define custom views and view-related logic (e.g., View protocol).
 
 Protocol Conformance:
 Swift: Typically applied to classes, structs, and enums.
 SwiftUI: Applied to SwiftUI view structs, view models, compositional views, custom view modifiers and UI logic.
 
 Typical Examples:
 Swift: Delegation (UITableViewDelegate), abstraction (Equatable), custom behaviors, or reusable functionality.
 SwiftUI: Creating reusable components, handling state, defining custom UI structures, View (View protocol), state management (ObservableObject).
 
 */

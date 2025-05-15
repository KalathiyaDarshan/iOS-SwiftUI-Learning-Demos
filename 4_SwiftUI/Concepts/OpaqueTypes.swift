//
//  OpaqueTypes.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Opaque Types in Swift vs. SwiftUI -

/*
 
 Opaque types are a powerful feature in Swift that allows you to hide the specific type of a value while still ensuring that it conforms to a particular protocol.
 This is especially useful when you want to abstract the type of a return value in a function or property but ensure that the type still adheres to a known protocol.
 Opaque types are denoted using the some keyword.
 
 Both in Swift and SwiftUI, opaque types are used to provide abstraction, improve flexibility, and reduce complexity, but their use cases vary slightly depending on the context.
 
 // MARK: - 1️⃣ Opaque Types in Swift -
 //###############################################################################
 
 In Swift, opaque types are primarily used to abstract the implementation details while still guaranteeing that the returned type conforms to a specific protocol.
 This helps in situations where the implementation type doesn't need to be exposed, but you still want to enforce protocol conformance.
 
 // MARK: - ✅ Use Case: Abstraction of Return Types -
 
 For example, when you want to return a type that conforms to a protocol but don't want to expose the specific underlying type to the caller:
 
 protocol Shape {
 func draw() -> String
 }
 
 struct Circle: Shape {
 func draw() -> String {
 return "Circle"
 }
 }
 
 struct Square: Shape {
 func draw() -> String {
 return "Square"
 }
 }
 
 // Using opaque types to abstract the return type
 func createShape() -> some Shape {
 return Circle()  // Could also return Square or any other type that conforms to Shape
 }
 
 let shape = createShape()
 print(shape.draw())  // "Circle"
 
 In this example:
 The function createShape() returns an opaque type (some Shape), meaning it hides the concrete type (Circle in this case) but guarantees that the return type conforms to the Shape protocol.
 This allows the function to return either a Circle, Square, or any other type conforming to Shape without revealing the exact type.
 
 // MARK: - ✅ Key Points in Swift: -
 
 some Type is used to return a type that conforms to a protocol without revealing the concrete type.
 
 Flexible Return Types:
 You can return different types as long as they conform to the same protocol, but the caller doesn't know the specific type.
 
 Encapsulation:
 The implementation details of the return type are hidden, providing more flexibility and cleaner code.
 
 // MARK: - 2️⃣ Opaque Types in SwiftUI -
 //###############################################################################
 
 In SwiftUI, opaque types are used in a similar way but with a focus on abstracting the type of views returned from view-building functions.
 SwiftUI relies on opaque return types extensively, especially when defining custom views or view modifiers, to improve performance and simplify view composition.
 
 // MARK: - ✅ Use Case: Abstracting View Types -
 
 In SwiftUI, views are often composed of different types that are conditionally rendered or modified.
 The use of opaque types allows SwiftUI to abstract the view type while still guaranteeing that the return type conforms to the View protocol.
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 VStack {
 Text("Hello, World!")
 customButton()
 }
 }
 
 // Using an opaque return type to hide the concrete view type
 func customButton() -> some View {
 Button(action: {
 print("Button tapped")
 }) {
 Text("Click Me")
 }
 }
 }
 
 In this example:
 The function customButton() returns an opaque type (some View), meaning SwiftUI knows the return type is some kind of View, but it doesn't need to know the exact concrete type (which is a Button in this case).
 This abstraction allows SwiftUI to optimize the view composition and efficiently manage the view hierarchy.
 
 // MARK: - ✅ Key Points in SwiftUI: -
 
 some View is commonly used in SwiftUI for functions that return a view to allow the exact type of the view to remain hidden.
 
 Performance Optimization:
 SwiftUI can optimize view rendering and minimize unnecessary recalculations when the concrete type of a view is abstracted.
 
 Simplified Code:
 The use of opaque types helps streamline complex views and view modifiers, where the specific type is not important to the consumer.
 
 // MARK: - 3️⃣ Key Differences: Opaque Types in Swift vs. SwiftUI -
 //###############################################################################
 
 Purpose:
 Swift: To hide the exact type while still conforming to a protocol.
 SwiftUI: To abstract the concrete view type while conforming to the View protocol.
 
 Primary Use:
 Swift: Abstraction for data types, allowing flexible return types.
 SwiftUI: Abstraction for view types, allowing more flexibility in building and returning views.
 
 Use Cases:
 Swift: Used to hide concrete types in functions that return a type conforming to a protocol.
 SwiftUI: Used to return a View from functions while hiding the exact concrete type.
 
 Common Keywords:
 Swift: some keyword for defining opaque return types.
 SwiftUI: some View is frequently used for returning views in SwiftUI.
 
 Flexibility:
 Swift: Allows flexible return types while maintaining protocol conformance.
 SwiftUI: Enables the composition of complex, dynamic views without exposing specific types.
 
 Impact on Performance:
 Swift: Allows for optimizations in how Swift handles protocol conformance.
 SwiftUI: Helps SwiftUI optimize the view hierarchy and reduce redundant renders.
 
 // MARK: - 🔹 Summary -
 //###############################################################################
 
 In Swift, opaque types are used primarily to abstract away specific types, providing flexibility in the types returned by functions while ensuring they conform to a protocol. This is useful in scenarios like returning collections, models, or custom types.
 
 In SwiftUI, opaque types (some View) are used extensively to abstract away the specific concrete type of views. This is crucial for view composition and performance optimizations, where the exact type of a view doesn’t need to be known by the consumer of the view but still needs to conform to the View protocol.
 
 */

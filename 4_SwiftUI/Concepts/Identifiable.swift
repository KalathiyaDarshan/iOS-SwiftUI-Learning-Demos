//
//  Identifiable.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Identity Identifiable in Swift vs. SwiftUI -

/*
 
 In Swift and SwiftUI, identity refers to how objects or values are compared or identified as the same or different.
 The way identity is handled varies slightly between Swift (where identity is mostly focused on data models and objects) and SwiftUI (where identity plays a key role in optimizing view updates and maintaining consistent UI state).
 
 // MARK: - 1️⃣ Identity in Swift -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Identity in Swift -
 
 In Swift, identity refers to the unique reference or memory location of an object.
 Two objects are considered the same if they reference the same memory location, while two objects with the same values but located at different memory addresses are considered different instances.
 
 In the case of value types (such as structs), Swift considers two instances with the same data to be equal in terms of their contents but different in terms of identity (since each instance occupies a separate memory space).
 For reference types (such as classes), Swift considers two instances equal only if they reference the same memory address.
 
 // MARK: - ✅ Identity with Value Types (Structs and Enums) -
 
 With value types (e.g., structs or enums), identity is often based on their value equality, meaning two instances of the same type with identical values are considered equal.
 
 struct Point {
 var x: Int
 var y: Int
 }
 
 let point1 = Point(x: 10, y: 20)
 let point2 = Point(x: 10, y: 20)
 
 print(point1 == point2)  // true (because values are equal)
 
 // MARK: - ✅ For reference types (like classes), identity is often tied to the object's memory reference. -
 
 class Car {
 var model: String
 
 init(model: String) {
 self.model = model
 }
 }
 
 let car1 = Car(model: "Sedan")
 let car2 = car1  // car2 references the same object as car1
 
 print(car1 === car2)  // true (same reference)
 
 In the above example, the === operator is used to check if two references point to the same instance (i.e., identity).
 For classes (reference types), identity is important when checking if two references point to the same instance of an object. The === operator is used to check reference equality.
 == checks if the contents of value types (like structs) or custom equality for reference types are equal.
 === checks if two reference types (like classes) refer to the same memory address.
 
 // MARK: - 2️⃣ Identity in SwiftUI -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Identity in SwiftUI -
 
 In SwiftUI, identity plays a critical role in efficiently managing the view hierarchy and optimizing performance by ensuring that views are reused or updated correctly based on their identity.
 This is particularly important when dealing with dynamic lists, animations, or any UI elements that need to change or be recreated based on data.
 
 In SwiftUI, identity is used to track and differentiate views in dynamic lists (such as List, ForEach, etc.) and animations.
 SwiftUI uses identifiers (like IDs) to associate views with underlying data. This helps SwiftUI determine whether a particular view needs to be re-rendered, reused, or moved.
 
 // MARK: - ✅ Identifiable Protocol -
 
 The Identifiable protocol is commonly used in SwiftUI to provide a stable identity for data models, so that SwiftUI can track each item in a list or dynamic view.
 The id property defined by Identifiable acts as a unique identifier for each instance of a model.
 
 import SwiftUI
 
 struct Person: Identifiable {
 var id = UUID()  // Unique identifier for each person
 var name: String
 }
 
 struct ContentView: View {
 let people = [
 Person(name: "Alice"),
 Person(name: "Bob"),
 Person(name: "Charlie")
 ]
 
 var body: some View {
 List(people) { person in
 Text(person.name)
 }
 }
 }
 
 In this example, Person conforms to Identifiable, and each Person is uniquely identified by the id property.
 SwiftUI uses this identity to track and manage the views efficiently.
 When the list of people changes, SwiftUI can determine which views need to be added, removed, or updated based on their identity.
 
 // MARK: - ✅ Tracking Identity in Animations -
 
 When animating elements in SwiftUI, identity helps maintain consistency during the animation process, ensuring that views are not unintentionally recreated or replaced during transitions.
 
 struct ContentView: View {
 @State private var people = ["Alice", "Bob", "Charlie"]
 
 var body: some View {
 List(people, id: \.self) { person in
 Text(person)
 .transition(.slide)
 }
 .onTapGesture {
 withAnimation {
 people.shuffle()
 }
 }
 }
 }
 
 In this example, the id: \.self ensures that each item in the list has a stable identity, allowing SwiftUI to apply animations smoothly without losing track of individual list items.
 
 // MARK: - ✅ Identity in Views and Data Binding -
 
 In SwiftUI, views that depend on data models with stable identities can help SwiftUI know when to update or reuse views.
 
 For example, using @Binding or @ObservedObject with identifiable data models helps keep track of which data is being bound to a view and ensures that the view is updated only when the relevant data changes.
 
 // MARK: - 3️⃣ Key Differences: Identity in Swift vs. SwiftUI -
 //###############################################################################
 
 Core Concept:
 Swift: Focused on how objects (value or reference types) are identified and compared for equality or reference.
 SwiftUI: Focused on view identity and optimization of view updates.
 
 Value Types (Structs/Enums):
 Swift: Identified by value equality. Two instances with the same value are equal but not the same instance.
 SwiftUI: Views are updated or reused based on identity (using id or Identifiable).
 
 Reference Types (Classes):
 Swift: Identified by reference equality (===), meaning two references pointing to the same object are considered identical.
 SwiftUI: Views are also managed based on reference identity when using @State, @Binding, etc.
 
 Use of Identifiable:
 Swift: Optional; used for making types distinguishable for collections (e.g., in dictionaries or arrays).
 SwiftUI: Essential for dynamic lists and view state management. Ensures stable identity of data used in views.
 
 State Management:
 Swift: Identity is not directly tied to UI state; it's mostly used for object comparison and manipulation.
 SwiftUI: Identity of data is crucial for view updates. Helps SwiftUI determine when to animate or update a view.
 
 // MARK: - 🔹 Summary -
 //###############################################################################
 
 In Swift, identity is crucial when comparing or managing reference types (classes) or when needing to distinguish value types with custom comparisons.
 In SwiftUI, identity plays a critical role in efficiently rendering and updating views, especially when managing dynamic data (e.g., lists, state changes) using Identifiable and IDs.
 
 */

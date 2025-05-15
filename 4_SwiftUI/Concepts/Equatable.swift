//
//  Equatable.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Equatable in Swift vs. SwiftUI -

/*
 
 The Equatable protocol is used to allow comparison between instances of a type in Swift.
 It enables checking whether two instances of a type are considered equal.
 This protocol is widely used in Swift and SwiftUI, but there are some key differences in how it is applied in these two contexts.
 
 // MARK: - 1️⃣ Equatable in Swift -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Equatable in Swift -
 
 In Swift, the Equatable protocol is used to enable types (such as classes, structs, or enums) to be compared for equality.
 When you conform to Equatable, you must implement the == operator to define how two instances of that type should be compared.
 
 // Define a struct that conforms to Equatable
 struct Person: Equatable {
 var name: String
 var age: Int
 }
 
 // The `==` operator is synthesized automatically
 let person1 = Person(name: "Alice", age: 25)
 let person2 = Person(name: "Bob", age: 30)
 
 if person1 == person2 {
 print("The persons are the same.")
 } else {
 print("The persons are different.")
 }
 
 // MARK: - ✅ How It Works -
 
 Automatic Synthesis:
 If all properties of a struct or enum are equatable, Swift can automatically synthesize the == operator for you. However, if a custom implementation of == is required (e.g., comparing two objects with reference semantics), you can manually implement it.
 
 Custom == Implementation:
 If you need more specific logic for equality, you can implement the == operator manually.
 
 // Custom implementation of `==` for a struct
 struct Person: Equatable {
 var name: String
 var age: Int
 
 static func ==(lhs: Person, rhs: Person) -> Bool {
 return lhs.name == rhs.name && lhs.age == rhs.age
 }
 }
 
 // MARK: - 2️⃣ Equatable in SwiftUI -
 //###############################################################################
 
 // MARK: - ✅ Purpose of Equatable in SwiftUI -
 
 In SwiftUI, Equatable is also used to compare values, but its primary focus is on view updates and state management.
 SwiftUI relies on Equatable to help optimize view rendering and avoid unnecessary view refreshes.
 When the state changes, SwiftUI compares the previous state to the new state to decide whether it needs to re-render a view.
 If the state is equatable and hasn't changed, SwiftUI can skip re-rendering that particular view.
 
 import SwiftUI
 
 // Define a model that conforms to Equatable
 struct CounterState: Equatable {
 var count: Int
 }
 
 struct ContentView: View {
 @State private var counterState = CounterState(count: 0)
 
 var body: some View {
 VStack {
 Text("Counter: \(counterState.count)")
 .padding()
 
 Button(action: {
 counterState.count += 1
 }) {
 Text("Increase Counter")
 }
 }
 .onChange(of: counterState) { _ in
 print("Counter updated.")
 }
 }
 }
 
 // MARK: - ✅ Example of Using Equatable with a List: -
 
 struct Contact: Identifiable, Equatable {
 var id = UUID()
 var name: String
 }
 
 struct ContactListView: View {
 @State private var contacts = [
 Contact(name: "Alice"),
 Contact(name: "Bob")
 ]
 
 var body: some View {
 List(contacts) { contact in
 Text(contact.name)
 }
 }
 }
 
 When using a list, you can make the elements conform to Equatable to optimize the performance of list updates:
 In the above code, the Contact struct conforms to Equatable, allowing SwiftUI to optimize view updates when the contacts array changes.
 When displaying dynamic data in a list, conforming to Equatable helps SwiftUI identify when data has changed.
 For example, if you’re updating the list of items, SwiftUI will compare old and new data to decide whether it needs to update the UI.
 
 // MARK: - ✅ Example of Optimizing State Changes -
 
 In SwiftUI, when you use Equatable with state or data models, it ensures that views are re-rendered only when there is a change in the data.
 If the data hasn’t changed, SwiftUI avoids unnecessary re-renders.
 
 import SwiftUI
 
 struct CounterState: Equatable {
 var count: Int
 }
 
 struct ContentView: View {
 @State private var counterState = CounterState(count: 0)
 
 var body: some View {
 VStack {
 Text("Counter: \(counterState.count)")
 .padding()
 
 Button(action: {
 counterState.count += 1
 }) {
 Text("Increase Counter")
 }
 }
 }
 }
 
 In this example, if the counterState.count remains the same, SwiftUI will not re-render the Text view, enhancing performance.
 
 // MARK: - ✅ How It Works in SwiftUI -
 
 State Comparison:
 When @State is marked as Equatable, SwiftUI compares the current state with the previous one.
 If the state hasn’t changed (i.e., if both the old and new states are equal), it doesn’t trigger a re-render of the view.
 
 View Optimization:
 By using Equatable, you ensure that views are only re-rendered when necessary, helping improve performance, especially with complex or frequently updated UI components.
 
 // MARK: - 3️⃣ Key Differences: Equatable in Swift vs. SwiftUI -
 //###############################################################################
 
 Primary Purpose:
 Swift: To enable the comparison of instances of a type for equality.
 SwiftUI: To optimize view rendering and state changes.
 
 Common Use Cases:
 Swift: Comparing objects (structs, classes, enums) for equality.
 SwiftUI: Preventing unnecessary view re-renders based on state changes.
 
 Automatic Synthesis:
 Swift: Automatic synthesis of == for structs and enums with all properties being equatable.
 SwiftUI: Automatic state comparisons and view updates (if state conforms to Equatable).
 
 Manual Implementation:
 Swift: Can manually implement == for custom logic.
 SwiftUI: Not typically manually implemented; SwiftUI automatically handles state changes.
 
 Optimization:
 Swift: Used to implement specific equality checks.
 SwiftUI: Used for optimizing the UI by reducing unnecessary re-renders.
 
 Interaction with UI:
 Swift: Does not directly affect UI rendering.
 SwiftUI: Directly affects UI rendering by determining if views should be refreshed.
 
 */

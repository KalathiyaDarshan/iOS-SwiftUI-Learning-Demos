//
//  DeclarativeReactiveProgramming.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Declarative and Reactive programming paradigm -

/*
 
 Both declarative and reactive programming paradigms have become increasingly important in modern software development.
 They focus on describing what the system should do rather than how to do it.
 However, how these paradigms are applied in Swift and SwiftUI can differ based on the frameworks and the type of system being developed.
 
 Let’s dive deeper into the declarative and reactive programming paradigms in the context of Swift and SwiftUI:
 
 // MARK: - 1️⃣ Declarative Programming Paradigm -
 //###############################################################################
 
 Declarative programming focuses on describing what the program should accomplish, rather than explicitly outlining the steps for achieving that goal.
 In this paradigm, the developer writes code that specifies the desired outcome rather than the process used to reach it.
 
 // MARK: - ✅ Declarative Programming in Swift: -
 
 In Swift, declarative programming is primarily used in UI design and in functional programming approaches.
 However, most of Swift's core functionality (e.g., control flow, data structures, and logic) is more imperative in nature.
 Swift allows for some declarative styles through closures and higher-order functions.
 
 let numbers = [1, 2, 3, 4, 5]
 
 // Using map (declarative) to double each number
 let doubledNumbers = numbers.map { $0 * 2 }
 print(doubledNumbers) // Output: [2, 4, 6, 8, 10]
 
 In this case, you're describing what should happen (double each element in the array) rather than how to iterate and modify the array manually.
 
 // MARK: - ✅ Declarative Nature in Swift: -
 
 Collection transformations:
 Using methods like map, filter, and reduce.
 
 Functional programming:
 Swift's first-class functions and closures support declarative patterns.
 
 Protocols and Generics:
 Can be used to define behavior in a more abstract and declarative way.
 
 However, Swift itself isn’t inherently designed for declarative paradigms; it is a general-purpose, multi-paradigm language that supports both imperative and declarative styles.
 
 // MARK: - ✅ Declarative Programming in SwiftUI: -
 
 SwiftUI is built to be a purely declarative framework, meaning you define the desired UI state and let the framework figure out how to update and render the UI.
 You describe the layout, interactions, and data bindings, and SwiftUI takes care of the rest.
 In SwiftUI, you don't tell the system exactly how to update the screen (imperative); you simply describe what the UI should look like based on the state.
 
 struct ContentView: View {
 @State private var counter = 0
 
 var body: some View {
 VStack {
 Text("Counter: \(counter)")
 Button(action: {
 counter += 1
 }) {
 Text("Increment")
 }
 }
 }
 }
 
 // MARK: - ✅ Key Concept: -
 
 You’re declaring that there’s a Text view that shows the counter value and a Button that updates the state. SwiftUI then handles the rendering and updating of the UI.
 The view hierarchy is described as a series of declarative statements, and SwiftUI manages when and how the UI needs to be updated based on state changes.
 Declarative Programming in SwiftUI is highly effective because it abstracts away the need to worry about the imperative details of UI rendering, updating, and layout adjustments.
 This makes code more concise, readable, and maintainable.
 
 // MARK: - 2️⃣ Reactive Programming Paradigm -
 //###############################################################################
 
 Reactive programming focuses on handling data streams and asynchronous events.
 It allows you to react to state changes by defining observers and subscriptions to certain events or data streams. When data changes or events occur, the program reacts to those changes by performing some action.
 
 // MARK: - ✅ Reactive Programming in Swift: -
 
 In Swift, reactive programming can be implemented through various third-party libraries such as RxSwift or Combine.
 These libraries allow developers to create reactive streams and data-binding solutions, which automatically update views or models when underlying data changes.
 
 import Combine
 
 class ViewModel {
 @Published var counter = 0
 private var cancellables = Set<AnyCancellable>()
 
 init() {
 $counter
 .sink { newValue in
 print("Counter updated: \(newValue)")
 }
 .store(in: &cancellables)
 }
 
 func incrementCounter() {
 counter += 1
 }
 }
 
 let viewModel = ViewModel()
 viewModel.incrementCounter() // Prints: "Counter updated: 1"
 
 // MARK: - ✅ Key Concept: -
 
 You create a @Published property, which automatically triggers updates to any subscribers (e.g., the sink method).
 This is an example of reactive programming because the counter's value changes reactively, and the sink subscriber reacts to those changes by printing the updated value.
 Combine (introduced by Apple in Swift) is now a core framework that provides a declarative Swift API for processing values over time and reacting to state changes in a more functional way.
 
 // MARK: - ✅ Reactive Programming in SwiftUI: -
 
 In SwiftUI, the reactive paradigm is central to how the framework works.
 SwiftUI views are reactive because they automatically update when the underlying data changes.
 This is made possible through state binding and the use of observed objects like @State, @Binding, and @ObservedObject.
 
 struct ContentView: View {
 @State private var counter = 0
 
 var body: some View {
 VStack {
 Text("Counter: \(counter)")
 Button(action: {
 counter += 1
 }) {
 Text("Increment")
 }
 }
 .onChange(of: counter) { newValue in
 print("Counter changed to \(newValue)")
 }
 }
 }
 
 // MARK: - ✅ Key Concept: -
 
 The Text view updates reactively when the counter value changes, and the .onChange modifier reacts to any changes in the state.
 This ensures that the UI is always in sync with the data.
 SwiftUI is reactive in nature because the view hierarchy listens for changes in state and bindings, reacting to those changes by re-rendering the UI as needed.
 
 // MARK: - ✅ Key Differences: Declarative and Reactive Programming in Swift vs. SwiftUI -
 
 Declarative Nature:
 Swift: Swift supports declarative paradigms via closures, functional programming, and higher-order functions.
 SwiftUI: SwiftUI is inherently declarative for UI construction: developers declare what the UI should look like based on state.
 
 Reactive Programming:
 Swift: Reactive programming can be implemented using libraries like RxSwift or Combine.
 SwiftUI: SwiftUI's state management system is reactive by design (e.g., @State, @Binding).
 
 State Management:
 Swift: State management in Swift with Combine or third-party libraries requires explicit handling (e.g., publishers, subscribers).
 SwiftUI: SwiftUI uses a built-in reactive state management system with @State, @Binding, and @ObservedObject for automatic UI updates.
 
 Data Binding:
 Swift: In Swift, Combine enables data binding between the UI and model through publishers and subscribers.
 SwiftUI: SwiftUI automatically binds views to data, reacting to changes in the underlying state.
 
 UI Updates:
 Swift: UI updates are imperative and require explicit code to trigger re-renders in frameworks like UIKit.
 SwiftUI: UI updates in SwiftUI are automatic and handled reactively when state changes.
 
 // MARK: - 🔹 Summary -
 
 In Swift, both declarative and reactive programming can be used, but these paradigms are more commonly seen with external libraries like Combine or RxSwift. Swift allows you to adopt these paradigms, but the language itself is multi-paradigm and imperative by default.
 
 In SwiftUI, declarative programming is the backbone of the framework, making it simple to define the layout and structure of your UI. Reactive programming is naturally embedded in SwiftUI's state management system, where the UI reacts to changes in the model automatically.
 
 SwiftUI makes the declarative and reactive paradigms much easier to use in the context of UI development compared to Swift, where you would typically rely on external libraries to achieve similar results.
 
 */

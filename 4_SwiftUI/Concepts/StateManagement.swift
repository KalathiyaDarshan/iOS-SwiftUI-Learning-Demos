//
//  StateManagement.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - State Management Simplification in SwiftUI -

/*
 
 SwiftUI makes state management more declarative and streamlined compared to UIKit.
 Unlike UIKit, where you manually update the UI based on state changes, SwiftUI automatically reacts to state changes, making it simpler and more efficient.
 
 // MARK: - 1️⃣ Core State Management Techniques in SwiftUI -
 //###############################################################################
 
 // MARK: - 1.1 @State – Simple Local State -
 //###############################################################################
 
 ✅ Use when state is local to a view and doesn't need to be shared.
 ❌ Avoid using @State for complex or shared state.
 
 import SwiftUI
 
 struct CounterView: View {
 @State private var count = 0  // Local state
 
 var body: some View {
 VStack {
 Text("Count: \(count)")
 .font(.largeTitle)
 Button("Increase") {
 count += 1  // UI updates automatically
 }
 }
 .padding()
 }
 }
 
 🔹 Why use @State?
 
 The UI automatically updates when count changes.
 The state is stored inside the view but is not shared outside.
 
 // MARK: - 1.2 @Binding – Sharing State Between Views -
 //###############################################################################
 
 ✅ Use when a child view needs to modify a parent view’s state.
 ❌ Avoid using @Binding for independent state management.
 
 struct ParentView: View {
 @State private var isOn = false  // Parent's state
 
 var body: some View {
 VStack {
 ToggleView(isOn: $isOn)  // Pass state with $
 Text(isOn ? "ON" : "OFF")
 }
 }
 }
 
 struct ToggleView: View {
 @Binding var isOn: Bool  // Child can modify parent's state
 
 var body: some View {
 Toggle("Enable", isOn: $isOn)
 .padding()
 }
 }
 
 🔹 Why use @Binding?
 
 It allows child views to mutate parent view state.
 Changes in the child reflect instantly in the parent.
 
 // MARK: - 1.3 @ObservedObject – Shared State Across Views -
 //###############################################################################
 
 ✅ Use when state needs to be shared across multiple views.
 ❌ Avoid using @ObservedObject for simple, local state.
 
 class CounterModel: ObservableObject {
 @Published var count = 0  // Reactive state
 }
 
 struct ContentView: View {
 @ObservedObject var model = CounterModel()
 
 var body: some View {
 VStack {
 Text("Count: \(model.count)")
 Button("Increase") {
 model.count += 1
 }
 }
 }
 }
 
 🔹 Why use @ObservedObject?
 
 Used for complex state that multiple views rely on.
 The @Published property updates all listening views automatically.
 
 // MARK: - 1.4 @EnvironmentObject – Global Shared State -
 //###############################################################################
 
 ✅ Use when state needs to be accessible across multiple views.
 ❌ Avoid using @EnvironmentObject for simple view-specific state.
 
 class UserSettings: ObservableObject {
 @Published var username = "Guest"
 }
 
 @main
 struct MyApp: App {
 @StateObject var settings = UserSettings()
 
 var body: some Scene {
 WindowGroup {
 ContentView()
 .environmentObject(settings)  // Inject globally
 }
 }
 }
 
 struct ContentView: View {
 @EnvironmentObject var settings: UserSettings  // Access global state
 
 var body: some View {
 VStack {
 Text("User: \(settings.username)")
 Button("Change Name") {
 settings.username = "John Doe"
 }
 }
 }
 }
 
 🔹 Why use @EnvironmentObject?
 
 Ideal for global, app-wide state.
 Avoids passing state manually through multiple views.
 
 // MARK: - 1.5 @StateObject – Persistent ObservedObject -
 //###############################################################################
 
 ✅ Use for creating new ObservableObject instances within a view.
 ❌ Avoid using @StateObject for objects that should be injected via @EnvironmentObject.
 
 class TimerModel: ObservableObject {
 @Published var time = 0
 }
 
 struct TimerView: View {
 @StateObject private var timer = TimerModel()  // Created once
 
 var body: some View {
 Text("Time: \(timer.time)")
 }
 }
 
 🔹 Why use @StateObject?
 
 Ensures the object persists as long as the view exists.
 Prevents unnecessary re-initialization.
 
 // MARK: - 2️⃣ @ObservableObject – Making a Class Observable -
 //###############################################################################
 
 ✅ Use when you need to store shared data that multiple views can observe.
 ✅ Works with @Published properties to notify views when data changes.
 
 import SwiftUI
 
 class CounterModel: ObservableObject {
 @Published var count = 0  // Notifies listeners when count changes
 }
 
 struct ContentView: View {
 @StateObject private var counter = CounterModel()  // Owned by this view
 
 var body: some View {
 VStack {
 Text("Count: \(counter.count)")
 .font(.largeTitle)
 Button("Increase") {
 counter.count += 1  // Updates UI automatically
 }
 }
 }
 }
 
 🔹 Why use @ObservableObject?
 
 The class conforms to ObservableObject, making it reactive.
 It notifies views whenever @Published properties change.
 @StateObject ensures that CounterModel is created once per view lifecycle.
 
 // MARK: - 3️⃣ @Published – Automatic Property Updates -
 //###############################################################################
 
 ✅ Use inside an ObservableObject to notify all views when data changes.
 
 class UserModel: ObservableObject {
 @Published var username = "Guest"  // Triggers UI updates when changed
 }
 
 struct ProfileView: View {
 @StateObject private var user = UserModel()
 
 var body: some View {
 VStack {
 Text("Username: \(user.username)")
 Button("Change Name") {
 user.username = "John Doe"  // UI updates automatically
 }
 }
 }
 }
 
 🔹 Why use @Published?
 
 Automatically triggers UI updates when the property changes.
 Works only inside @ObservableObject.
 Reduces the need for manually calling objectWillChange.send().
 
 // MARK: - 4️⃣ @Environment – Accessing System-Wide Values -
 //###############################################################################
 
 ✅ Use to access system-wide values like color schemes, locale, or scene phase.
 
 struct ThemeView: View {
 @Environment(\.colorScheme) var colorScheme  // Light/Dark mode detection
 
 var body: some View {
 Text(colorScheme == .dark ? "Dark Mode" : "Light Mode")
 .padding()
 }
 }
 
 🔹 Why use @Environment?
 
 It allows access to SwiftUI’s built-in environment values.
 Unlike @EnvironmentObject, it works for built-in system values only.
 
 // MARK: - 5️⃣ environmentObject(_:) vs. environment(_:) -
 //###############################################################################
 
 environmentObject(_:)
 Use Case: Injects a custom ObservableObject globally into SwiftUI
 Example: .environmentObject(userSettings)
 
 environment(_:)
 Use Case: Injects a built-in SwiftUI value into the environment
 Example: .environment(\.locale, Locale(identifier: "fr"))
 
 // MARK: - 6️⃣ Best Practices for SwiftUI State Management -
 //###############################################################################
 
 @State:
 Use Case: Local state, simple values, Storing local state in a view
 Example: Toggle switch in a single view
 
 @Binding:
 Use Case: Child modifying parent state, Sharing state between parent-child views
 Example: A child view updating a counter in the parent
 
 @ObservedObject:
 Use Case: Shared complex state
 Example: A view using a data model that updates frequently
 
 @EnvironmentObject:
 Use Case: Global state shared/used across multiple views
 Example: User settings, app-wide themes
 
 @Environment:
 Accessing system-wide settings (e.g., dark mode)
 
 @ObservableObject & @Published
 Managing a complex, reusable state model
 
 @StateObject:
 Use Case: Persistent objects in a view
 Example: A timer that keeps running
 
 // MARK: - 7️⃣ Which One to Use? -
 //###############################################################################
 
 Scenario: You are building a weather app.
 
 @State: Storing the temperature inside a view.
 @Binding: A child view allowing the user to change temperature units.
 @ObservedObject: A weather model fetching data.
 @EnvironmentObject: A global theme manager for dark/light mode.
 @StateObject: A persistent API manager for fetching weather data.
 
 */

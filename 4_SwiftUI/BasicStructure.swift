//
//  BasicStructure.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - App -

/*
 
 - It’s the main entry point of your app, where the app’s lifecycle is controlled. It represents the structure of the app.
 - You define the App protocol by creating a struct that conforms to it.
 - Inside this struct, you declare what views should be displayed when the app starts.
 - The App is needed to manage your app’s launch lifecycle, manage its state, and show different scenes in your app.
 
 @main
 struct MyApp: App {
 var body: some Scene {
 WindowGroup {
 ContentView()
 }
 }
 }
 
 */

// MARK: - body -

/*
 
 - It’s a property that defines what the view should look like.
 - It’s where you describe the layout of your UI elements.
 - You provide a computed property body in your view’s struct and return the UI elements you want to display.
 - The body is essential because it tells SwiftUI what to display for the given view.
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, World!")
 }
 }
 
 */

// MARK: - some -

/*
 
 - It’s a return type modifier that tells SwiftUI you are returning a concrete view type, but it hides the actual type behind the some View abstraction.
 - Use some when defining a return type for body or any computed property that returns a view.
 - It provides type safety without exposing the concrete type, allowing SwiftUI to manage different views efficiently.
 
 var body: some View {
 Text("Hello")
 }
 
 */

// MARK: - Scene -

/*
 
 - It represents a container for your app's interface that is displayed on the screen.
 - It can be a full-screen view or a part of the interface.
 - Scenes are used in the App struct to define the app’s window.
 - Scenes allow you to manage different parts of your app’s UI and lifecycle in a structured way.
 
 var body: some Scene {
 WindowGroup {
 ContentView()
 }
 }
 
 */

// MARK: - WindowGroup -

/*
 
 - It’s a container for your app’s main window that holds and displays views.
 - You typically use it inside the Scene to specify what content the window should display.
 - It helps manage the window's content in a flexible and reusable manner, especially when you have multiple windows or views.
 
 var body: some Scene {
 WindowGroup {
 ContentView()
 }
 }
 
 */

// MARK: - View -

/*
 
 - It represents a single UI element or a combination of UI elements in SwiftUI.
 - Views can be text, buttons, images, etc.
 - Any UI component you want to display is considered a View, and you can create custom views or use built-in ones.
 - Views are the fundamental building blocks for your UI. Every UI element is a type of View.
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, World!")
 }
 }
 
 */

// MARK: - previews -

/*
 
 - It’s used to show a preview of a view in the SwiftUI canvas.
 - It's helpful for seeing your UI changes live as you write code.
 - You define the previews static property in your view struct to show how it looks in different states.
 - Previews make it easier to develop your UI without needing to run the app.
 - You can quickly check how changes look.
 - previews is static because it needs to be available to the SwiftUI preview system without needing to create an instance of the view struct.
 - This allows the preview system to read the preview configuration directly and render the preview instantly.
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, World!")
 }
 
 static var previews: some View {
 ContentView()
 }
 }
 
 */

// MARK: - PreviewProvider -

/*
 
 - PreviewProvider is a protocol that lets you provide different previews for your views.
 - It’s used to make your custom views display in Xcode’s preview canvas.
 - You conform to PreviewProvider by implementing the required previews property, which returns the view you want to preview.
 - It’s a way to show and test your view layout in real-time within Xcode without running the app on a simulator or device.
 
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */

// MARK: - Principles Behind SwiftUI -

/*
 
 - Opaque Return Types
 - Implicit return from single-expression functions
 - Function Builders
 - Property Wrappers
 
 */

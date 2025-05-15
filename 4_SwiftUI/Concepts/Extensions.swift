//
//  Extensions.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Extensions in Swift vs. SwiftUI -

/*
 
 Extensions are a powerful feature in Swift that allow you to add functionality to existing classes, structs, enums, or protocols, without modifying their original source code.
 This feature is also extensively used in SwiftUI, especially for extending views, modifying UI elements, or adding helper methods.
 
 // MARK: - 1️⃣ Extensions in Swift: -
 //###############################################################################
 
 In Swift, extensions are primarily used to:
 - Add new functionality to existing types (e.g., methods, computed properties).
 - Conform to protocols.
 - Organize and separate code for better maintainability.
 
 // Original class
 class Car {
 var model: String
 var year: Int
 
 init(model: String, year: Int) {
 self.model = model
 self.year = year
 }
 }
 
 // Extension to add a method to the `Car` class
 extension Car {
 func description() -> String {
 return "\(model) (\(year))"
 }
 }
 
 let myCar = Car(model: "Tesla", year: 2025)
 print(myCar.description())  // Output: Tesla (2025)
 
 // MARK: - 2️⃣ Extensions in SwiftUI: -
 //###############################################################################
 
 In SwiftUI, extensions are often used to:
 - Extend SwiftUI views with additional modifiers.
 - Create helper methods for repeated UI tasks.
 - Create reusable UI components.
 
 import SwiftUI
 
 // Extension to add custom modifier for padding and border to a View
 extension View {
 func customStyle() -> some View {
 self
 .padding()
 .border(Color.blue, width: 2)
 .cornerRadius(10)
 }
 }
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, SwiftUI!")
 .customStyle()  // Using custom extension to apply the style
 }
 }
 
 // MARK: - ✅ Example 1: Custom View Modifiers -
 A custom view modifier is a great way to extend a view's functionality in SwiftUI without modifying the original view code.
 
 import SwiftUI
 
 // Extension to add a custom modifier
 extension View {
 func roundedBorder() -> some View {
 self
 .padding()
 .background(Color.blue)
 .cornerRadius(10)
 .foregroundColor(.white)
 }
 }
 
 struct ContentView: View {
 var body: some View {
 Text("SwiftUI is awesome!")
 .roundedBorder()  // Applying the custom modifier
 }
 }
 
 // MARK: - ✅ Example 2: Adding Helper Methods for Views -
 You can extend SwiftUI views with helper methods to keep your code DRY (Don't Repeat Yourself).
 
 import SwiftUI
 
 // Extension to add a custom method for animation
 extension View {
 func fadeInOut(duration: Double) -> some View {
 self
 .opacity(0)
 .animation(Animation.easeInOut(duration: duration).repeatForever(autoreverses: true), value: 1)
 }
 }
 
 struct ContentView: View {
 var body: some View {
 Text("Fading Text")
 .fadeInOut(duration: 2)  // Using custom method for animation
 }
 }
 
 // MARK: - ✅ Key Differences Between Extensions in Swift and SwiftUI: -
 
 Primary Use:
 Swift: Add functionality to types (e.g., methods, computed properties).
 SwiftUI: Extend views with additional modifiers and functionality.
 
 Common Use Cases:
 Swift: Organizing code, conforming to protocols, adding methods.
 SwiftUI: Reusable view modifiers, helper methods for UI.
 
 Access to Existing Functionality:
 Swift: You can add methods, computed properties, and more to any type.
 SwiftUI: Extensions are mainly used to enhance and modify views (Text, Button).
 
 Impact on UI:
 Swift: Extensions don't directly affect UI. They're more about code organization.
 SwiftUI: Extensions are often directly applied to modify UI components or behaviors.
 
 Access Control:
 Swift: Focused on limiting access across files and modules.
 SwiftUI: More focused on binding and observing data to UI elements.
 
 */

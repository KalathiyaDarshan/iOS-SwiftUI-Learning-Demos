//
//  Functions.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Functions in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Functions in Swift (General Purpose) -
 //###############################################################################
 
 func greet(name: String) -> String {
 return "Hello, \(name)!"
 }
 
 let message = greet(name: "John")
 print(message) // Output: "Hello, John!"
 
 // MARK: - 2️⃣ Functions in SwiftUI (Returning Views) -
 //###############################################################################
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 VStack {
 greetingView(name: "John")
 }
 }
 
 func greetingView(name: String) -> some View {
 Text("Hello, \(name)!")
 .font(.title)
 .padding()
 .background(Color.blue)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 }
 
 ✔ SwiftUI functions return UI components (some View).
 ✔ Encapsulates UI elements into reusable functions.
 
 // MARK: - 3️⃣ Functions with Parameters in Swift vs. SwiftUI -
 //###############################################################################
 
 func add(a: Int, b: Int) -> Int {
 return a + b
 }
 
 let sum = add(a: 5, b: 3)
 print(sum) // Output: 8
 
 ✅ SwiftUI Function with Parameters (Reusable View)
 
 struct ContentView: View {
 var body: some View {
 VStack {
 customButton(title: "Click Me", color: .blue)
 customButton(title: "Delete", color: .red)
 }
 }
 
 func customButton(title: String, color: Color) -> some View {
 Button(title) {
 print("\(title) button tapped!")
 }
 .padding()
 .background(color)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 }
 
 ✔ Encapsulates UI styling and behavior.
 ✔ SwiftUI functions help in building modular views.
 
 // MARK: - 4️⃣ Functions with Closures in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Function with a Closure
 
 func performOperation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
 return operation(a, b)
 }
 
 let result = performOperation(a: 5, b: 3) { $0 + $1 }
 print(result) // Output: 8
 
 ✅ SwiftUI Function with a Closure
 
 struct ContentView: View {
 var body: some View {
 VStack {
 customButton(title: "Tap Me") {
 print("Button Pressed!")
 }
 }
 }
 
 func customButton(title: String, action: @escaping () -> Void) -> some View {
 Button(action: action) {
 Text(title)
 .padding()
 .background(Color.blue)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 }
 }
 
 // MARK: - 5️⃣ Functions with @ViewBuilder in SwiftUI -
 //###############################################################################
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 VStack {
 customView()
 }
 }
 
 @ViewBuilder
 func customView() -> some View {
 Text("Hello, SwiftUI!")
 .font(.title)
 .foregroundColor(.blue)
 Image(systemName: "star.fill")
 .foregroundColor(.yellow)
 }
 }
 
 ✔ Returns multiple views using @ViewBuilder.
 ✔ Optimizes UI composition in SwiftUI.
 
 */

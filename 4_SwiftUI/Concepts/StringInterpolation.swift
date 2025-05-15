//
//  StringInterpolation.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - String and Interpolation in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ String Interpolation in Swift (Standard Usage) -
 //###############################################################################
 
 ✅ String interpolation in Swift allows inserting variables or expressions into strings using \().
 ✅ Swift supports string interpolation in variables, print(), and logging.
 
 let name = "John"
 let age = 25
 let message = "Hello, my name is \(name) and I am \(age) years old."
 print(message) // Hello, my name is John and I am 25 years old.
 
 // MARK: - 2️⃣ String Interpolation in SwiftUI (Text Views) -
 //###############################################################################
 
 ✅ In SwiftUI, string interpolation is used to dynamically update UI inside Text views.
 ✅ SwiftUI updates Text dynamically when variables change.
 
 struct ContentView: View {
 let name = "John"
 let age = 25
 
 var body: some View {
 Text("Hello, my name is \(name) and I am \(age) years old.") // ✅ Works in SwiftUI
 .font(.title)
 .padding()
 }
 }
 
 // MARK: - 3️⃣ Dynamic Interpolation with State (@State) in SwiftUI -
 //###############################################################################
 
 ✅ SwiftUI allows live updates when interpolated variables change.
 ✅ In Swift, you'd need print(), but SwiftUI updates the UI directly!
 
 struct ContentView: View {
 @State private var counter = 0
 
 var body: some View {
 VStack {
 Text("Button tapped \(counter) times.") // ✅ Auto-updates when `counter` changes
 .font(.headline)
 
 Button("Tap Me") {
 counter += 1 // Changes UI dynamically
 }
 }
 }
 }
 
 // MARK: - 4️⃣ String Concatenation in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example
 
 let firstName = "John"
 let lastName = "Doe"
 let fullName = firstName + " " + lastName
 print(fullName) // John Doe
 
 ✅ SwiftUI Example
 
 struct ContentView: View {
 let firstName = "John"
 let lastName = "Doe"
 
 var body: some View {
 Text(firstName + " " + lastName) // ✅ Works in SwiftUI
 }
 }
 
 // MARK: - 5️⃣ String Interpolation for UI Styling in SwiftUI -
 //###############################################################################
 
 Text("Score: \(100)")
 .font(.largeTitle)
 .foregroundColor(.blue)
 
 ✔️ SwiftUI allows modifying text attributes dynamically.
 
 // MARK: - 6️⃣ String Interpolation with Formatters in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example: Formatting Numbers
 
 let price = 9.99
 let formattedPrice = String(format: "$%.2f", price)
 print(formattedPrice) // $9.99
 
 ✅ SwiftUI Example: Formatting Numbers
 
 struct ContentView: View {
 let price: Double = 9.99
 
 var body: some View {
 Text("Price: \(price, specifier: "%.2f")") // ✅ Formats inside `Text`
 }
 }
 
 // MARK: - 7️⃣ Multi-line Strings in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example
 
 let multiLine = """
 This is a multi-line
 string in Swift.
 """
 print(multiLine)
 
 ✅ SwiftUI Example
 
 struct ContentView: View {
 var body: some View {
 Text("""
 This is a multi-line
 string in SwiftUI.
 """)
 }
 }
 
 */

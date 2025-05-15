//
//  IfElse.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - If-Else in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ If-Else in Swift (Imperative Approach) -
 //###############################################################################
 
 ✔️ In Swift, if-else is used for control flow in functions, loops, and conditions.
 
 let age = 20
 
 if age >= 18 {
 print("You are an adult.")
 } else {
 print("You are a minor.")
 }
 
 // MARK: - 2️⃣ If-Else in SwiftUI (Declarative Approach) -
 //###############################################################################
 
 ✔️ In SwiftUI, if-else is used inside the body property to conditionally show or hide views.
 ✔️ SwiftUI dynamically updates the UI when isLoggedIn changes.
 
 struct ContentView: View {
 @State private var isLoggedIn = false
 
 var body: some View {
 VStack {
 if isLoggedIn {
 Text("Welcome back!")
 } else {
 Text("Please log in.")
 }
 
 Button("Toggle Login") {
 isLoggedIn.toggle() // ✅ Updates UI
 }
 }
 }
 }
 
 // MARK: - 3️⃣ Ternary Operator (?:) in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example
 
 let age = 20
 let status = age >= 18 ? "Adult" : "Minor"
 print(status) // Adult
 
 ✅ SwiftUI Example
 
 struct ContentView: View {
 @State private var isDarkMode = false
 
 var body: some View {
 Text(isDarkMode ? "Dark Mode On" : "Light Mode On") // ✅ Uses ternary operator
 .foregroundColor(isDarkMode ? .white : .black)
 .background(isDarkMode ? .black : .white)
 
 Button("Toggle Mode") {
 isDarkMode.toggle()
 }
 }
 }
 
 ✔️ SwiftUI efficiently updates the view when isDarkMode changes.
 
 // MARK: - 4️⃣ If-Else in Swift Loops vs. SwiftUI Views -
 //###############################################################################
 
 ✅ Swift Example: If-Else Inside a Loop
 
 for num in 1...5 {
 if num % 2 == 0 {
 print("\(num) is even")
 } else {
 print("\(num) is odd")
 }
 }
 
 ✅ SwiftUI Example: Conditional Views Inside ForEach
 
 struct ContentView: View {
 let numbers = [1, 2, 3, 4, 5]
 
 var body: some View {
 VStack {
 ForEach(numbers, id: \.self) { num in
 if num % 2 == 0 {
 Text("\(num) is even").foregroundColor(.blue)
 } else {
 Text("\(num) is odd").foregroundColor(.red)
 }
 }
 }
 }
 }
 
 ✔️ Each number is checked, and its color is updated dynamically.
 
 */

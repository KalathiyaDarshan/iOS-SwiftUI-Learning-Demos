//
//  ForLoopsRanges.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - For Loops and Ranges in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ For Loops in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ For Loops in Swift (General Purpose)
 for i in 1...5 {
 print("Number \(i)")
 }
 // Output:
 // Number 1
 // Number 2
 // Number 3
 // Number 4
 // Number 5
 
 ✅ For Loops in SwiftUI (UI Construction)
 import SwiftUI
 
 struct ContentView: View {
 let fruits = ["Apple", "Banana", "Cherry"]
 
 var body: some View {
 VStack {
 ForEach(fruits, id: \.self) { fruit in
 Text(fruit)
 .padding()
 }
 }
 }
 }
 
 // MARK: - 2️⃣ Range in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Range in Swift (Data Manipulation)
 for i in 1 ..< 5 {
 print(i)
 }
 // Output:
 // 1
 // 2
 // 3
 // 4
 
 ✅ Range in SwiftUI (UI Dynamic Behavior)
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 VStack {
 ForEach(1..<6, id: \.self) { i in
 Text("Item \(i)")
 .padding()
 }
 }
 }
 }
 
 // MARK: - 3️⃣ For Loops and Range in SwiftUI – Key Differences -
 //###############################################################################
 
 For Loops in Swift:
 Used in computations, iterations over arrays, or performing data manipulations. The focus is more on logic and data processing.
 Example: Performing operations on numbers or objects.
 
 For Loops in SwiftUI:
 SwiftUI focuses on UI representation, and ForEach serves as the primary tool for iterating over collections and ranges to create views.
 Example: Displaying items in a list.
 
 */

//
//  ArraysSetsDictionaries.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Arrays, Sets, and Dictionaries in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Arrays in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Arrays in Swift (Data Storage)
 
 let fruits = ["Apple", "Banana", "Cherry"]
 print(fruits[0]) // Output: "Apple"
 
 ✅ Arrays in SwiftUI (Dynamic UI Rendering)
 
 struct ContentView: View {
 let fruits = ["Apple", "Banana", "Cherry"]
 
 var body: some View {
 List(fruits, id: \.self) { fruit in
 Text(fruit)
 }
 }
 }
 
 // MARK: - 2️⃣ Sets in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Sets in Swift (Unique Data Storage)
 
 let numbers: Set = [1, 2, 3, 4]
 let moreNumbers: Set = [3, 4, 5, 6]
 let unionSet = numbers.union(moreNumbers)
 print(unionSet) // Output: [1, 2, 3, 4, 5, 6]
 
 ✅ Sets in SwiftUI (UI Updates Based on Uniqueness)
 
 struct ContentView: View {
 let uniqueFruits: Set = ["Apple", "Banana", "Cherry"]
 
 var body: some View {
 VStack {
 ForEach(Array(uniqueFruits), id: \.self) { fruit in
 Text(fruit)
 }
 }
 }
 }
 
 // MARK: - 3️⃣ Dictionaries in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Dictionaries in Swift (Key-Value Pairs)
 
 let studentGrades = ["John": 85, "Emily": 92, "Jake": 78]
 print(studentGrades["Emily"] ?? "No grade") // Output: 92
 
 ✅ Dictionaries in SwiftUI (Binding Data to Views)
 
 struct ContentView: View {
 let studentGrades = ["John": 85, "Emily": 92, "Jake": 78]
 
 var body: some View {
 VStack {
 ForEach(studentGrades.keys.sorted(), id: \.self) { student in
 Text("\(student): \(studentGrades[student]!)")
 }
 }
 }
 }
 
 */

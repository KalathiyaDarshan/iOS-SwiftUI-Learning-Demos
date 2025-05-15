//
//  NamedTypes.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Named Types in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Structs in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Structs in Swift (Data Models)
 struct User {
 var name: String
 var age: Int
 }
 
 let user = User(name: "John", age: 30)
 print(user.name)  // Output: John
 
 ✅ Structs in SwiftUI (UI Components)
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, SwiftUI!")
 .padding()
 .font(.title)
 }
 }
 
 // MARK: - 2️⃣ Classes in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Classes in Swift (Reference Types)
 class Car {
 var model: String
 var year: Int
 
 init(model: String, year: Int) {
 self.model = model
 self.year = year
 }
 
 func description() -> String {
 return "\(model) (\(year))"
 }
 }
 
 let car = Car(model: "Tesla", year: 2025)
 print(car.description()) // Output: Tesla (2025)
 
 ✅ Classes in SwiftUI (Observable Objects)
 import SwiftUI
 
 class UserData: ObservableObject {
 @Published var name = "John"
 @Published var age = 30
 }
 
 struct ContentView: View {
 @ObservedObject var userData = UserData()
 
 var body: some View {
 VStack {
 Text("Name: \(userData.name)")
 Text("Age: \(userData.age)")
 }
 }
 }
 
 // MARK: - 3️⃣ Enums in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Enums in Swift (Data Representation and Logic)
 
 enum Direction {
 case north, south, east, west
 }
 
 let direction = Direction.north
 
 ✅ Enums in SwiftUI (UI State Representation)
 
 import SwiftUI
 
 enum ViewState {
 case loading, loaded, error
 }
 
 struct ContentView: View {
 @State private var state: ViewState = .loading
 
 var body: some View {
 switch state {
 case .loading:
 Text("Loading...")
 case .loaded:
 Text("Data loaded!")
 case .error:
 Text("Error occurred.")
 }
 }
 }
 
 */

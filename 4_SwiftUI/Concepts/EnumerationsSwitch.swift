//
//  EnumerationsSwitch.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Enumerations (enum) and switch in Swift vs. SwiftUI -

/*
 
 // MARK: - 1️⃣ Enumerations (enum) in Swift (General Usage) -
 //###############################################################################
 
 enum Direction {
 case north, south, east, west
 }
 
 let travelDirection = Direction.north
 
 if travelDirection == .north {
 print("Heading North")
 }
 
 ✅ In Swift, enum is commonly used for data types, states, and options.
 ✅ Enums in Swift are used for logic handling and comparisons.
 
 // MARK: - 2️⃣ Enumerations (enum) in SwiftUI (State Management & UI Representation) -
 //###############################################################################
 
 struct ContentView: View {
 enum ScreenState {
 case home, settings, profile
 }
 
 @State private var currentScreen: ScreenState = .home
 
 var body: some View {
 VStack {
 switch currentScreen {
 case .home:
 Text("Home Screen")
 case .settings:
 Text("Settings Screen")
 case .profile:
 Text("Profile Screen")
 }
 
 Button("Go to Settings") {
 currentScreen = .settings
 }
 }
 }
 }
 
 ✅ In SwiftUI, enum is often used to control UI views dynamically.
 ✅ SwiftUI uses enum to manage screen states and UI updates.
 
 // MARK: - 3️⃣ switch in Swift vs. SwiftUI -
 //###############################################################################
 
 let direction = Direction.north
 
 switch direction {
 case .north:
 print("Moving North")
 case .south:
 print("Moving South")
 case .east:
 print("Moving East")
 case .west:
 print("Moving West")
 }
 
 ✅ switch in SwiftUI (UI Rendering)
 
 struct ContentView: View {
 enum Tab {
 case home, search, profile
 }
 
 @State private var selectedTab: Tab = .home
 
 var body: some View {
 VStack {
 switch selectedTab {
 case .home:
 Text("Home View")
 case .search:
 Text("Search View")
 case .profile:
 Text("Profile View")
 }
 
 HStack {
 Button("Home") { selectedTab = .home }
 Button("Search") { selectedTab = .search }
 Button("Profile") { selectedTab = .profile }
 }
 }
 }
 }
 
 // MARK: - 4️⃣ enum with Associated Values in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example
 
 enum UserStatus {
 case active(String)
 case inactive
 }
 
 let status = UserStatus.active("Online")
 
 switch status {
 case .active(let message):
 print("User is \(message)")
 case .inactive:
 print("User is offline")
 }
 
 ✔️ Enums with associated values allow passing data dynamically.
 
 ✅ SwiftUI Example (Using enum to Change UI Based on State)
 
 struct ContentView: View {
 enum NetworkStatus {
 case connected(String)
 case disconnected
 }
 
 @State private var status: NetworkStatus = .disconnected
 
 var body: some View {
 VStack {
 switch status {
 case .connected(let networkName):
 Text("Connected to \(networkName)")
 .foregroundColor(.green)
 case .disconnected:
 Text("No Internet Connection")
 .foregroundColor(.red)
 }
 
 Button("Toggle Connection") {
 status = status == .disconnected ? .connected("Wi-Fi") : .disconnected
 }
 }
 }
 }
 
 ✔️ SwiftUI updates the UI dynamically based on the enum state.
 
 // MARK: - 5️⃣ Enum as Raw Values in Swift vs. SwiftUI -
 //###############################################################################
 
 ✅ Swift Example
 
 enum Status: String {
 case success = "Success"
 case error = "Error"
 }
 
 print(Status.success.rawValue) // "Success"
 
 ✅ SwiftUI Example
 
 struct ContentView: View {
 enum Theme: String {
 case light = "Light Mode"
 case dark = "Dark Mode"
 }
 
 @State private var theme: Theme = .light
 
 var body: some View {
 VStack {
 Text("Current Theme: \(theme.rawValue)")
 .padding()
 
 Button("Toggle Theme") {
 theme = theme == .light ? .dark : .light
 }
 }
 }
 }
 
 */

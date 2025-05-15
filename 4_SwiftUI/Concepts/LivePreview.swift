//
//  LivePreview.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Live Preview and Real-Time Editing Enhanced Preview Support in SwiftUI -

/*
 
 SwiftUI offers built-in, powerful live preview support directly in Xcode, making it far superior for UI development.
 
 // MARK: - ✅ SwiftUI Preview Canvas (#Preview) -
 
 SwiftUI integrates a Live Preview system that allows developers to see UI updates in real-time without running the app on a simulator.
 The #Preview macro (introduced in Xcode 15) replaces struct PreviewProvider, making SwiftUI previews more intuitive.
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 VStack {
 Text("Hello, SwiftUI!")
 .font(.largeTitle)
 .foregroundColor(.blue)
 Button("Click Me") {
 print("Button tapped")
 }
 .padding()
 }
 }
 }
 
 #Preview {
 ContentView() // This enables live preview in Xcode
 }
 
 The #Preview macro allows you to see live updates instantly in Xcode’s preview canvas.
 Changes reflect in real-time without rebuilding the app.
 
 // MARK: - ✅ Interactive Preview -
 
 - You can interact with SwiftUI previews directly in the Xcode canvas.
 
 - For example:
 Tap buttons.
 Scroll through lists.
 Change data values in @State properties.
 
 - This removes the need to run the app on a simulator for basic UI testing.
 
 // MARK: - ✅ Multiple Preview Variants -
 
 SwiftUI allows developers to preview UI components in different device sizes, color schemes, and dynamic text sizes.
 
 #Preview("Dark Mode") {
 ContentView()
 .preferredColorScheme(.dark)
 }
 
 #Preview("iPad Layout") {
 ContentView()
 .previewDevice("iPad Pro (12.9-inch)")
 }
 
 // MARK: - ✅ Live Reload with Hot Reload -
 
 SwiftUI’s Hot Reload feature updates the UI as you type, reducing development time significantly.
 Works best for UI updates but has some limitations for complex logic changes.
 
 */

// MARK: - How to use the PreviewProvider in SwiftUI? -

/*
 
 In SwiftUI, PreviewProvider was traditionally used to enable live previews of your UI components in Xcode’s preview canvas.
 However, as of Xcode 15, PreviewProvider has been replaced by the more intuitive #Preview macro. Still, understanding both approaches is useful.
 
 // MARK: - 1️⃣ Using PreviewProvider (Xcode 14 and earlier) -
 //###############################################################################
 
 Before #Preview, PreviewProvider was used to generate previews inside Xcode.
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, SwiftUI!")
 .font(.largeTitle)
 .foregroundColor(.blue)
 }
 }
 
 // Enabling SwiftUI preview
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 // MARK: - ✅ How It Works? -
 
 ContentView_Previews conforms to PreviewProvider, a SwiftUI protocol.
 The previews static property returns a View (usually the same view you want to preview).
 Xcode automatically picks this up and displays a live preview in the Preview Canvas.
 
 // MARK: - 2️⃣ Using #Preview (Xcode 15 and later) -
 //###############################################################################
 
 With Xcode 15, Apple introduced #Preview, which simplifies preview creation.
 
 import SwiftUI
 
 struct ContentView: View {
 var body: some View {
 Text("Hello, SwiftUI!")
 .font(.largeTitle)
 .foregroundColor(.blue)
 }
 }
 
 // New Xcode 15 way
 #Preview {
 ContentView()
 }
 
 Why Use #Preview?
 ✅ Less Boilerplate – No need for a separate struct.
 ✅ More Readable – Looks cleaner and more Swift-like.
 ✅ Supports Multiple Variants Easily – See next section.
 
 // MARK: - 3️⃣ Multiple Previews Using #Preview -
 //###############################################################################
 
 You can preview the same view in multiple configurations, such as dark mode, different devices, and dynamic text sizes.
 
 #Preview("Light Mode") {
 ContentView()
 }
 
 #Preview("Dark Mode") {
 ContentView()
 .preferredColorScheme(.dark)
 }
 
 #Preview("iPhone 14 Pro") {
 ContentView()
 .previewDevice("iPhone 14 Pro")
 }
 
 🔹 Xcode will show all previews side by side! 🚀
 
 // MARK: - 4️⃣ Previewing Different States -
 //###############################################################################
 
 You can preview different states of a view using @State.
 
 struct CounterView: View {
 @State private var count = 0
 
 var body: some View {
 VStack {
 Text("Count: \(count)")
 .font(.largeTitle)
 Button("Increase") {
 count += 1
 }
 }
 .padding()
 }
 }
 
 // Preview with different initial state
 #Preview("Initial State") {
 CounterView()
 }
 
 #Preview("Modified State") {
 CounterView().padding().background(Color.gray.opacity(0.2))
 }
 
 // MARK: - 5️⃣ Previewing Views with Data -
 //###############################################################################
 
 For views that depend on data, you can pass sample/mock data into the preview.
 
 struct User {
 let name: String
 }
 
 struct UserView: View {
 let user: User
 
 var body: some View {
 Text("Hello, \(user.name)!")
 .font(.title)
 }
 }
 
 // Preview with mock data
 #Preview {
 UserView(user: User(name: "John Doe"))
 }
 
 // MARK: - 6️⃣ Previewing Multiple Layouts -
 //###############################################################################
 
 You can preview your views in different layouts, such as landscape and different screen sizes.
 
 #Preview("iPhone SE", traits: .sizeThatFitsLayout) {
 ContentView()
 }
 
 #Preview("iPad Landscape", traits: .landscapeLeft) {
 ContentView()
 }
 
 // MARK: - 7️⃣ When to Use #Preview vs. PreviewProvider? -
 //###############################################################################
 
 Xcode 14 and earlier:
 PreviewProvider: Yes
 #Preview: No
 
 Xcode 15 and later:
 PreviewProvider: Yes (but legacy)
 #Preview: Recommended
 
 Less boilerplate:
 PreviewProvider: No
 #Preview: Yes
 
 Multiple previews easily:
 PreviewProvider: Requires extra structs
 #Preview: Yes
 
 Preview different states:
 PreviewProvider: Yes
 #Preview: Yes
 
 Works with UIKit previews:
 PreviewProvider: Yes
 #Preview: No
 
 // MARK: - ✅ Conclusion: -
 
 Use #Preview in Xcode 15 and later for cleaner code and better previews.
 If you're using Xcode 15+, use #Preview.
 If you're working on an older project, PreviewProvider still works.
 SwiftUI previews make UI development much faster and more visual.
 
 */

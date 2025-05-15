//
//  Colors.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Colors -

/*
 
 SwiftUI provides a Color struct that lets you define and modify colors dynamically.
 You can use system-defined colors, custom colors, gradients, and even dynamic colors that adapt to dark mode.
 
 // MARK: - System Colors in SwiftUI: -
 //###############################################################################
 
 SwiftUI provides built-in semantic colors that adapt to light and dark modes.
 
 Rectangle()
 .fill(Color.blue) // System color
 .frame(width: 100, height: 50)
 
 ✅ Built-in colors: .red, .green, .blue, .yellow, .orange, .purple, .pink, .black, .white, .gray, .clear.
 
 - // MARK: - 1️⃣ Adaptive System Colors: -
 
 These colors adjust automatically based on light/dark mode:
 
 Rectangle()
 .fill(Color.primary)  // Adapts to light/dark mode
 .frame(width: 100, height: 50)
 
 ✅ .primary and .secondary adjust their color automatically.
 
 // MARK: - Custom Colors in SwiftUI: -
 //###############################################################################
 
 - // MARK: - 1️⃣ RGB Color with Opacity: -
 
 Rectangle()
 .fill(Color(red: 0.5, green: 0.7, blue: 0.2, opacity: 1.0))
 .frame(width: 100, height: 50)
 
 ✅ Uses red, green, blue, and opacity values from 0.0 - 1.0.
 
 - // MARK: - 2️⃣ Define Custom Colors in Assets: -
 
 1️⃣ Open Assets.xcassets
 2️⃣ Click + → New Color Set
 3️⃣ Name it CustomGreen
 4️⃣ Set colors for Light & Dark Mode
 5️⃣ Use it in SwiftUI:
 
 Rectangle()
 .fill(Color("CustomGreen")) // Uses color from Assets
 .frame(width: 100, height: 50)
 
 ✅ Dynamically adjusts based on dark/light mode.
 
 // MARK: - Background Color Using .background(): -
 //###############################################################################
 
 Text("Hello, SwiftUI!")
 .padding()
 .background(Color.blue) // Adds blue background
 
 ✅ background(Color) sets the background behind the view.
 
 // MARK: - Opacity Modifier: -
 //###############################################################################
 
 Rectangle()
 .fill(Color.red)
 .frame(width: 100, height: 50)
 .opacity(0.5) // 50% transparent
 
 ✅ .opacity(0.5) makes it semi-transparent.
 
 // MARK: - Border Color Using .border(): -
 //###############################################################################
 
 Text("SwiftUI")
 .padding()
 .border(Color.green, width: 3) // Green border
 
 ✅ .border(Color, width:) adds an outline.
 
 // MARK: - Gradients in SwiftUI: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Linear Gradient: -
 
 Rectangle()
 .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom))
 .frame(width: 100, height: 50)
 
 ✅ Red-to-blue transition from top to bottom.
 
 - // MARK: - 2️⃣ Radial Gradient: -
 
 Circle()
 .fill(RadialGradient(gradient: Gradient(colors: [.yellow, .orange]), center: .center, startRadius: 10, endRadius: 50))
 .frame(width: 100, height: 100)
 
 ✅ Circular gradient from center outwards.
 
 - // MARK: - 3️⃣ Angular Gradient: -
 
 Ellipse()
 .fill(AngularGradient(gradient: Gradient(colors: [.blue, .green, .purple]), center: .center))
 .frame(width: 150, height: 80)
 
 ✅ Rotating gradient effect.
 
 // MARK: - Overlay Color Using .overlay(): -
 //###############################################################################
 
 Circle()
 .fill(Color.blue)
 .frame(width: 100, height: 100)
 .overlay(Text("SwiftUI").foregroundColor(.white))
 
 ✅ Adds text over a colored shape.
 
 // MARK: - Conditional Color Change: -
 //###############################################################################
 
 Change colors dynamically based on a condition.
 
 struct ContentView: View {
 @State private var isActive = false
 
 var body: some View {
 Rectangle()
 .fill(isActive ? Color.green : Color.red)
 .frame(width: 100, height: 50)
 .onTapGesture {
 isActive.toggle() // Tap to switch colors
 }
 }
 }
 
 ✅ Toggles between red and green on tap.
 
 // MARK: - Animating Color Changes: -
 //###############################################################################
 
 struct AnimatingColor: View {
 @State private var isHighlighted = false
 
 var body: some View {
 Rectangle()
 .fill(isHighlighted ? Color.blue : Color.orange)
 .frame(width: 100, height: 50)
 .animation(.easeInOut(duration: 1))
 .onTapGesture {
 isHighlighted.toggle()
 }
 }
 }
 
 ✅ Smooth color transition on tap.
 
 // MARK: - Using ColorScheme for Light/Dark Mode: -
 //###############################################################################
 
 Detect system mode and adjust colors accordingly.
 
 struct ContentView: View {
 @Environment(\.colorScheme) var colorScheme
 
 var body: some View {
 Text("SwiftUI")
 .foregroundColor(colorScheme == .dark ? .white : .black)
 }
 }
 
 ✅ Switches between black and white text based on dark/light mode.
 
 */

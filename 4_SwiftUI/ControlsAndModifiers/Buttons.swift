//
//  Buttons.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Buttons -

/*
 
 In SwiftUI, Button is a fundamental interactive UI element that performs an action when tapped.
 It supports text, images, or custom views inside.
 You can customize buttons using various modifiers like .buttonStyle(), .foregroundColor(), .frame(), .background(), .clipShape(), and more.
 
 // MARK: - Basic Button in SwiftUI: -
 //###############################################################################
 
 Button("Tap Me") {
 print("Button tapped!")
 }
 
 ✅ Displays a default system button with "Tap Me" label.
 
 // MARK: - Button with Label View: -
 //###############################################################################
 
 You can use Label to add an icon with text.
 
 Button {
 print("Button tapped!")
 } label: {
 Label("Like", systemImage: "hand.thumbsup.fill")
 }
 
 ✅ Uses SF Symbols to display an icon next to the text.
 
 // MARK: - Customizing Button with .foregroundColor(): -
 //###############################################################################
 
 Button("Tap Me") {
 print("Button tapped!")
 }
 .foregroundColor(.white)
 .padding()
 .background(Color.blue)
 .cornerRadius(10)
 
 ✅ Changes text color to white, adds padding, and a blue background with rounded corners.
 
 // MARK: - Button with an Image: -
 //###############################################################################
 
 Button(action: {
 print("Image Button tapped!")
 }) {
 Image(systemName: "star.fill")
 .resizable()
 .frame(width: 40, height: 40)
 .foregroundColor(.yellow)
 }
 
 ✅ Uses SF Symbol ("star.fill"), resizes it, and changes its color.
 
 // MARK: - Rounded Button with .clipShape(): -
 //###############################################################################
 
 Button(action: {
 print("Rounded Button tapped!")
 }) {
 Text("Click Me")
 .padding()
 .background(Color.green)
 .clipShape(Capsule())
 }
 
 ✅ Uses .clipShape(Capsule()) to create a pill-shaped button.
 
 // MARK: - Button with .buttonStyle(): -
 //###############################################################################
 
 SwiftUI provides built-in button styles:
 
 Button("Tap Me") {
 print("Styled Button tapped!")
 }
 .buttonStyle(BorderedProminentButtonStyle())
 
 ✅ Built-in styles:
 
 .bordered()
 .borderedProminent()
 .plain()
 .link()
 
 // MARK: - Full-Width Button using .frame(): -
 //###############################################################################
 
 Button("Submit") {
 print("Submit tapped!")
 }
 .frame(maxWidth: .infinity)
 .padding()
 .background(Color.red)
 .foregroundColor(.white)
 .clipShape(RoundedRectangle(cornerRadius: 10))
 
 ✅ Expands button to full width.
 
 // MARK: - Disabling a Button: -
 //###############################################################################
 
 Use .disabled(true) to make a button unclickable.
 
 Button("Disabled") {
 print("This won't work")
 }
 .disabled(true)
 .foregroundColor(.gray)
 
 ✅ The button appears gray and is not tappable.
 
 // MARK: - Animated Button Effect: -
 //###############################################################################
 
 struct AnimatedButtonView: View {
 @State private var isTapped = false
 
 var body: some View {
 Button("Animate Me") {
 withAnimation {
 isTapped.toggle()
 }
 }
 .padding()
 .background(isTapped ? Color.green : Color.blue)
 .foregroundColor(.white)
 .cornerRadius(10)
 }
 }
 
 ✅ Toggles color between blue & green with animation.
 
 // MARK: - Custom Button Style: -
 //###############################################################################
 
 struct CustomButtonStyle: ButtonStyle {
 func makeBody(configuration: Configuration) -> some View {
 configuration.label
 .padding()
 .background(configuration.isPressed ? Color.gray : Color.orange)
 .foregroundColor(.white)
 .cornerRadius(10)
 .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
 }
 }
 
 Button("Custom Style") {
 print("Custom button tapped!")
 }
 .buttonStyle(CustomButtonStyle())
 
 ✅ Changes color and scales down when pressed.
 
 */

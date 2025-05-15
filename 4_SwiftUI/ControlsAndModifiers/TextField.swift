//
//  TextField.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - TextField -

/*
 
 In SwiftUI, TextField is used to create an input field where users can type text.
 It supports customization using modifiers like .textFieldStyle(), .padding(), .background(), .keyboardType(), and more.
 
 // MARK: - Basic TextField: -
 //###############################################################################
 
 struct ContentView: View {
 @State private var name: String = ""
 
 var body: some View {
 TextField("Enter your name", text: $name)
 .padding()
 .textFieldStyle(RoundedBorderTextFieldStyle())
 }
 }
 
 ✅ This creates a simple TextField with a rounded border.
 
 // MARK: - Customizing Placeholder and Text Color: -
 //###############################################################################
 
 TextField("Placeholder Text", text: $name)
 .foregroundColor(.blue)   // Changes text color
 .padding()
 .background(Color.gray.opacity(0.2))  // Light gray background
 .cornerRadius(8)
 
 ✅ The text turns blue, and the background gets a light gray effect.
 
 // MARK: - Secure Input using SecureField: -
 //###############################################################################
 
 SecureField("Enter password", text: $password)
 .textFieldStyle(RoundedBorderTextFieldStyle())
 .padding()
 
 ✅ Hides user input with dots (•••••).
 
 // MARK: - Adding a Border and Custom Style: -
 //###############################################################################
 
 TextField("Type something...", text: $text)
 .padding()
 .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
 .padding()
 
 ✅ Blue border with rounded corners.
 
 // MARK: - Changing Keyboard Type: -
 //###############################################################################
 
 TextField("Enter Email", text: $email)
 .keyboardType(.emailAddress)   // Shows email keyboard
 .autocapitalization(.none)     // Disables auto-capitalization
 .padding()
 .textFieldStyle(RoundedBorderTextFieldStyle())
 
 ✅ Helps input validation by showing relevant keyboards.
 
 🔹 Other keyboardType options:
 
 .numberPad → Numbers only
 .decimalPad → Numbers + decimal point
 .phonePad → Phone number
 .url → URL format
 
 // MARK: - Dismissing Keyboard on Tap: -
 //###############################################################################
 
 struct ContentView: View {
 @State private var text = ""
 
 var body: some View {
 VStack {
 TextField("Tap to type...", text: $text)
 .textFieldStyle(RoundedBorderTextFieldStyle())
 .padding()
 }
 .onTapGesture {
 hideKeyboard()
 }
 }
 }
 
 extension View {
 func hideKeyboard() {
 UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
 }
 }
 
 ✅ Dismisses the keyboard when tapping outside the TextField.
 
 // MARK: - Limiting Text Length: -
 //###############################################################################
 
 TextField("Max 10 characters", text: $text)
 .onChange(of: text) { newValue in
 if newValue.count > 10 {
 text = String(newValue.prefix(10))
 }
 }
 .textFieldStyle(RoundedBorderTextFieldStyle())
 .padding()
 
 ✅ Limits input to 10 characters.
 
 // MARK: - Adding an Icon Inside a TextField: -
 //###############################################################################
 
 HStack {
 Image(systemName: "magnifyingglass")   // SF Symbol
 .foregroundColor(.gray)
 
 TextField("Search...", text: $searchText)
 }
 .padding()
 .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
 
 ✅ Adds a search icon inside the TextField.
 
 // MARK: - Adding a Clear Button: -
 //###############################################################################
 
 HStack {
 TextField("Type something...", text: $text)
 .textFieldStyle(RoundedBorderTextFieldStyle())
 
 if !text.isEmpty {
 Button(action: { text = "" }) {
 Image(systemName: "xmark.circle.fill")
 .foregroundColor(.gray)
 }
 }
 }
 .padding()
 
 ✅ Adds a clear button (xmark.circle.fill) to reset input.
 
 // MARK: - Customizing TextField Style with .textFieldStyle(): -
 //###############################################################################
 
 TextField("Styled Field", text: $text)
 .textFieldStyle(RoundedBorderTextFieldStyle())  // Rounded style
 
 🔹 Available styles:
 
 .roundedBorder → Default rounded border.
 .plain → Removes border, makes it flat.
 .automatic → Uses default styling for the platform.
 
 // MARK: - Using focused for Auto-Focus: -
 //###############################################################################
 
 struct ContentView: View {
 @FocusState private var isFocused: Bool
 @State private var text = ""
 
 var body: some View {
 TextField("Auto-focus", text: $text)
 .textFieldStyle(RoundedBorderTextFieldStyle())
 .focused($isFocused)
 .onAppear {
 DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
 isFocused = true  // Auto-focus after 1 second
 }
 }
 }
 }
 
 ✅ Focuses the TextField automatically when the view appears.
 
 // MARK: - TextField inside a Form: -
 //###############################################################################
 
 Form {
 Section(header: Text("User Information")) {
 TextField("Full Name", text: $name)
 TextField("Email", text: $email)
 .keyboardType(.emailAddress)
 }
 }
 
 ✅ TextFields inside a structured Form layout.
 
 */

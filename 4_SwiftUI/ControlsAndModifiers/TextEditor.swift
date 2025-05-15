//
//  TextEditor.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - TextEditor -

/*
 
 TextEditor in SwiftUI is used for multi-line text input, unlike TextField, which is single-line only.
 It allows users to enter and edit long-form text.
 
 // MARK: - Basic TextEditor Usage: -
 //###############################################################################
 
 struct ContentView: View {
 @State private var text: String = "Type here..."
 
 var body: some View {
 TextEditor(text: $text)
 .padding()
 .border(Color.gray, width: 1)
 }
 }
 
 ✅ A basic text editor with a gray border.
 
 // MARK: - Customizing Text Color, Font, and Background: -
 //###############################################################################
 
 TextEditor(text: $text)
 .font(.system(size: 18, weight: .medium, design: .rounded))
 .foregroundColor(.blue)       // Text color
 .padding()
 .background(Color.gray.opacity(0.2)) // Light gray background
 .cornerRadius(10)
 
 ✅ Text becomes blue, with a rounded background and a custom font size.
 
 // MARK: - Limiting Text Length: -
 //###############################################################################
 
 TextEditor(text: $text)
 .onChange(of: text) { newValue in
 if newValue.count > 200 {
 text = String(newValue.prefix(200)) // Limit to 200 characters
 }
 }
 .border(Color.red, width: 1)
 
 ✅ Restricts input to 200 characters.
 
 // MARK: - Adding Placeholder Text: -
 //###############################################################################
 
 SwiftUI does not provide a built-in placeholder for TextEditor, but you can overlay a Text when the content is empty:
 
 struct ContentView: View {
 @State private var text: String = ""
 
 var body: some View {
 ZStack(alignment: .topLeading) {
 if text.isEmpty {
 Text("Enter your message...")
 .foregroundColor(.gray)
 .padding(.horizontal, 8)
 .padding(.top, 8)
 }
 TextEditor(text: $text)
 .padding()
 .opacity(text.isEmpty ? 0.5 : 1) // Reduce opacity for empty text
 }
 .border(Color.gray, width: 1)
 }
 }
 
 ✅ Shows placeholder text when input is empty.
 
 // MARK: - Customizing the Keyboard Type: -
 //###############################################################################
 
 TextEditor(text: $text)
 .keyboardType(.emailAddress) // Shows email keyboard
 .autocapitalization(.none)   // Disables auto-capitalization
 .disableAutocorrection(true) // Disables autocorrection
 
 ✅ Helps with input validation.
 
 // MARK: - Dismissing the Keyboard on Tap: -
 //###############################################################################
 
 struct ContentView: View {
 @State private var text: String = ""
 
 var body: some View {
 VStack {
 TextEditor(text: $text)
 .frame(height: 200)
 .border(Color.gray, width: 1)
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
 
 ✅ Dismisses the keyboard when tapping outside the TextEditor.
 
 // MARK: - Styling the Border and Shadow: -
 //###############################################################################
 
 TextEditor(text: $text)
 .padding()
 .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
 .shadow(radius: 5)
 
 ✅ Adds a blue border and shadow effect.
 
 // MARK: - Controlling TextEditor Size: -
 //###############################################################################
 
 By default, TextEditor expands to fit content. You can restrict height:
 
 TextEditor(text: $text)
 .frame(height: 150)
 .border(Color.gray, width: 1)
 
 ✅ Fixes height at 150 points.
 
 // MARK: - Adjusting Text Alignment: -
 //###############################################################################
 
 TextEditor(text: $text)
 .multilineTextAlignment(.center) // Center-align text
 .padding()
 
 ✅ Supports .leading, .center, and .trailing alignments.
 
 // MARK: - Detecting Text Changes: -
 //###############################################################################
 
 TextEditor(text: $text)
 .onChange(of: text) { newValue in
 print("New text: \(newValue)")
 }
 
 ✅ Logs text when the user types.
 
 // MARK: - Disabling Editing: -
 //###############################################################################
 
 TextEditor(text: $text)
 .disabled(true) // Prevents editing
 .border(Color.gray, width: 1)
 
 ✅ Makes the TextEditor read-only.
 
 // MARK: - Scrollable TextEditor with Auto-Scrolling: -
 //###############################################################################
 
 By default, TextEditor is scrollable, but you can force scrolling to the latest text:
 
 struct ContentView: View {
 @State private var text: String = ""
 
 var body: some View {
 ScrollView {
 TextEditor(text: $text)
 .frame(height: 200)
 .padding()
 }
 }
 }
 
 ✅ Wraps TextEditor inside ScrollView.
 
 // MARK: - Auto-Focus on TextEditor: -
 //###############################################################################
 
 struct ContentView: View {
 @FocusState private var isFocused: Bool
 @State private var text = ""
 
 var body: some View {
 TextEditor(text: $text)
 .frame(height: 200)
 .border(Color.gray, width: 1)
 .focused($isFocused)
 .onAppear {
 DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
 isFocused = true  // Auto-focus after 1 second
 }
 }
 }
 }
 
 ✅ Automatically focuses the TextEditor.
 
 // MARK: - TextEditor inside a Form: -
 //###############################################################################
 
 Form {
 Section(header: Text("Description")) {
 TextEditor(text: $text)
 .frame(height: 150)
 }
 }
 
 ✅ Places TextEditor in a structured Form layout.
 
 */

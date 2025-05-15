//
//  Lists.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Lists -

/*
 
 In SwiftUI, List is a powerful view used for displaying data in a scrollable, structured format, similar to UITableView in UIKit.
 It can be customized using various modifiers to control its appearance, layout, and interaction.
 
 // MARK: - Basic List Usage -
 //###############################################################################
 
 A List in SwiftUI can display static or dynamic data.
 
 // MARK: - Example 1: Static List (A simple list with three items.) -
 
 List {
 Text("Apple 🍏")
 Text("Banana 🍌")
 Text("Cherry 🍒")
 }
 
 // MARK: - Example 2: Dynamic List (The list dynamically updates when the fruits array changes.) -
 
 Using an array to populate the list dynamically:
 
 struct FruitListView: View {
 let fruits = ["Apple 🍏", "Banana 🍌", "Cherry 🍒"]
 
 var body: some View {
 List(fruits, id: \.self) { fruit in
 Text(fruit)
 }
 }
 }
 
 // MARK: - Adding Modifiers to List: -
 //###############################################################################
 
 // MARK: - 1️⃣ Styling List Rows -
 By default, each row in a List is a Text view, but you can customize it.
 
 Example: Custom Row Style
 
 List {
 Text("Apple 🍏")
 .font(.title)
 .foregroundColor(.red)
 .padding()
 .background(Color.yellow)
 .cornerRadius(10)
 }
 
 🔹 Modifiers applied:
 
 font(.title): Increases text size
 foregroundColor(.red): Changes text color
 padding(): Adds spacing
 background(Color.yellow): Adds background
 cornerRadius(10): Rounds corners
 
 // MARK: - 2️⃣ Adding ListRowInsets -
 You can control the padding inside list rows using .listRowInsets(_:).
 
 Example: Removing Default Insets
 
 List {
 Text("No Insets")
 .listRowInsets(EdgeInsets())
 }
 
 🔹 Effect: The text will stretch to the full width of the list.
 
 // MARK: - 3️⃣ Adding Headers and Footers -
 Use Section to add a header or footer.
 
 List {
 Section(header: Text("Fruits").font(.headline)) {
 Text("Apple 🍏")
 Text("Banana 🍌")
 }
 Section(footer: Text("More fruits coming soon...")) {
 Text("Cherry 🍒")
 }
 }
 
 🔹 Effect:
 
 The first section has a "Fruits" header.
 The second section has a footer message.
 
 // MARK: - 4️⃣ Styling the List Appearance -
 SwiftUI provides different styles for lists.
 
 Example: .listStyle() Modifier
 
 List {
 Text("Apple 🍏")
 Text("Banana 🍌")
 }
 .listStyle(InsetGroupedListStyle())
 
 🔹 Available styles:
 
 PlainListStyle()
 GroupedListStyle()
 InsetGroupedListStyle()
 SidebarListStyle()
 Each style affects the list's layout and appearance.
 
 // MARK: - 5️⃣ Customizing Row Backgrounds -
 Use .listRowBackground(_:) to change the row background.
 
 List {
 Text("Apple 🍏")
 .listRowBackground(Color.green.opacity(0.3))
 }
 
 🔹 Effect: The row background becomes light green.
 
 // MARK: - Interactivity with Lists: -
 //###############################################################################
 
 // MARK: - 1️⃣ Tap Gesture on List Rows -
 
 List {
 Text("Tap me")
 .onTapGesture {
 print("Row tapped!")
 }
 }
 
 🔹 Effect: Prints "Row tapped!" in the console when tapped.
 
 // MARK: - 2️⃣ Swipe Actions -
 You can add swipe actions to delete or edit items.
 
 List {
 Text("Swipe me")
 .swipeActions {
 Button(role: .destructive) {
 print("Deleted!")
 } label: {
 Label("Delete", systemImage: "trash")
 }
 }
 }
 
 🔹 Effect: Swiping left reveals a Delete button.
 
 // MARK: - 3️⃣ Deleting List Items -
 Use .onDelete(perform:) to enable item deletion.
 
 struct FruitListView: View {
 @State private var fruits = ["Apple 🍏", "Banana 🍌", "Cherry 🍒"]
 
 var body: some View {
 List {
 ForEach(fruits, id: \.self) { fruit in
 Text(fruit)
 }
 .onDelete { indexSet in
 fruits.remove(atOffsets: indexSet)
 }
 }
 }
 }
 
 🔹 Effect: Swipe left to delete a fruit.
 
 // MARK: - Advanced Customizations: -
 //###############################################################################
 
 // MARK: - 1️⃣ List with Images & Custom Cells -
 
 struct FruitRow: View {
 var fruit: String
 var body: some View {
 HStack {
 Image(systemName: "applelogo")
 .resizable()
 .frame(width: 30, height: 30)
 Text(fruit)
 .font(.headline)
 }
 .padding()
 }
 }
 
 struct FruitListView: View {
 let fruits = ["Apple 🍏", "Banana 🍌", "Cherry 🍒"]
 
 var body: some View {
 List(fruits, id: \.self) { fruit in
 FruitRow(fruit: fruit)
 }
 }
 }
 
 🔹 Effect: Each row contains an image and text.
 
 // MARK: - 2️⃣ List with Navigation & Selection -
 
 struct FruitListView: View {
 let fruits = ["Apple 🍏", "Banana 🍌", "Cherry 🍒"]
 
 var body: some View {
 NavigationView {
 List(fruits, id: \.self) { fruit in
 NavigationLink(destination: Text("You selected \(fruit)")) {
 Text(fruit)
 }
 }
 .navigationTitle("Fruits")
 }
 }
 }
 
 🔹 Effect: Clicking an item navigates to a new screen.
 
 */

//
//  LazyGrid.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Lazy Grid -

/*
 
 SwiftUI provides a flexible and powerful way to create grids using
 LazyVGrid (Vertical Grid - rows) and LazyHGrid (Horizontal Grid - columns).
 
 Grids allow you to arrange items dynamically based on available space, making them ideal for creating photo galleries, dashboards, or product lists.
 
 // MARK: - 1️⃣ LazyVGrid – Vertical Grid: -
 
 struct VerticalGridExample: View {
 let columns = [
 GridItem(.flexible()), // 1st column
 GridItem(.flexible())  // 2nd column
 ]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 20) {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .frame(width: 100, height: 100)
 .background(Color.blue.opacity(0.3))
 .cornerRadius(10)
 }
 }
 .padding()
 }
 }
 }

 🔹 Effect: A 2-column vertical grid with dynamic row heights.
 
 // MARK: - 2️⃣ LazyHGrid – Horizontal Grid: -
 
 struct HorizontalGridExample: View {
 let rows = [
 GridItem(.flexible()), // 1st row
 GridItem(.flexible())  // 2nd row
 ]
 
 var body: some View {
 ScrollView(.horizontal) {
 LazyHGrid(rows: rows, spacing: 20) {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .frame(width: 100, height: 100)
 .background(Color.green.opacity(0.3))
 .cornerRadius(10)
 }
 }
 .padding()
 }
 }
 }

 🔹 Effect: A 2-row horizontal grid.
 
 // MARK: - 3️⃣ GridItem Sizing Options -
 
 .fixed(100) - Fixed width/height
 .flexible(minimum: 50, maximum: 200) - Adjusts size dynamically
 .adaptive(minimum: 100) - Fits multiple items in one row
 
 // MARK: - Example: Fixed, Flexible, and Adaptive Grid Items -
 
 struct MixedGridExample: View {
 let columns = [
 GridItem(.fixed(100)),      // Fixed column width
 GridItem(.flexible()),      // Flexible column
 GridItem(.adaptive(minimum: 80)) // Adapts multiple items per row
 ]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 20) {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .frame(height: 100)
 .background(Color.orange.opacity(0.3))
 .cornerRadius(10)
 }
 }
 .padding()
 }
 }
 }
 
 🔹 Effect:
 
 First column → Fixed width (100px)
 Second column → Flexible
 Third column → Adapts based on space available
 
 // MARK: - 4️⃣ Modifiers for Grids -
 
 .spacing(20) - Space between items
 .frame(width:, height:) - Set fixed size for items
 .background(Color.red.opacity(0.3)) - Apply background color
 .cornerRadius(10) - Rounded corners
 .padding(10) - Add padding around the grid
 
 // MARK: - 5️⃣ Grid with Images (Photo Gallery) -
 
 struct PhotoGridExample: View {
 let columns = [
 GridItem(.adaptive(minimum: 100))
 ]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 10) {
 ForEach(1...12, id: \.self) { index in
 Image(systemName: "photo")
 .resizable()
 .scaledToFit()
 .frame(width: 100, height: 100)
 .background(Color.gray.opacity(0.3))
 .cornerRadius(10)
 }
 }
 .padding()
 }
 }
 }

 🔹 Effect: A photo gallery-style grid using SF Symbols.
 
 // MARK: - 6️⃣ Nested Grids (Complex Layouts) -
 
 struct NestedGridExample: View {
 let columns = [GridItem(.flexible()), GridItem(.flexible())]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 20) {
 ForEach(1...10, id: \.self) { index in
 VStack {
 Text("Category \(index)")
 .font(.headline)
 .padding(.bottom, 5)
 
 LazyHGrid(rows: [GridItem(.fixed(100))], spacing: 10) {
 ForEach(1...3, id: \.self) { item in
 Text("Item \(item)")
 .frame(width: 80, height: 80)
 .background(Color.purple.opacity(0.3))
 .cornerRadius(10)
 }
 }
 }
 }
 }
 .padding()
 }
 }
 }

 🔹 Effect: A Vertical Grid containing multiple Horizontal Grids.
 
 // MARK: - 7️⃣ Summary of GridItem Configurations -
 
 .fixed(100) - Use when you need uniform sizes
 .flexible(minimum: 50, maximum: 200) - Use for dynamic layouts
 .adaptive(minimum: 80) - Use when you want items to fit dynamically
 
 // MARK: - 8️⃣ Final Thoughts -
 
 ✅ Use LazyVGrid for vertical layouts like photo galleries.
 ✅ Use LazyHGrid for horizontal scrolling sections.
 ✅ Use .adaptive(minimum:) to fit as many items as possible.
 ✅ Combine grids to create complex layouts like dashboards.
 
 */

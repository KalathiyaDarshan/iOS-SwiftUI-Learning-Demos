//
//  ScrollAndGridPerformance.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Scroll and Grid Performance -

/*
 
 When working with ScrollViews and Grids in SwiftUI, optimizing performance is crucial, especially for handling large datasets.
 Lazy loading, efficient view updates, and memory management are key factors that determine the smoothness of scrolling and grid performance.
 
 // MARK: - Understanding Performance Issues in ScrollView & Grids -
 
 🚨 Unoptimized Scrolling & Grids can cause:
 
 High memory usage 🛑 (due to all views loading at once)
 Slow UI performance 🛑 (laggy animations and frame drops)
 Inefficient view rendering 🛑 (unnecessary re-drawing of unchanged views)
 
 How SwiftUI Optimizes Performance:
 
 ✅ Uses lazy loading (LazyVGrid, LazyHGrid, LazyVStack, LazyHStack)
 ✅ Reuses off-screen views when scrolling
 ✅ Uses SwiftUI’s diffing algorithm to update only changed elements
 ✅ Uses @State, @Binding, and @ObservedObject for efficient updates
 
 // MARK: - Lazy Loading for Better Performance -
 
 ❌ BAD: Using ScrollView with Regular VStack (No Lazy Loading)
 
 struct BadScrollViewExample: View {
 var body: some View {
 ScrollView {
 VStack {
 ForEach(1...1000, id: \.self) { index in
 Text("Item \(index)")
 .frame(height: 50)
 .background(Color.blue.opacity(0.2))
 .cornerRadius(8)
 .padding(.horizontal)
 }
 }
 }
 }
 }

 ❌ Issue:
 
 All 1000 items load at once → High memory usage and slow scrolling
 No reuse mechanism → Every scroll loads new instances
 
 ✅ GOOD: Using LazyVStack (Lazy Loading)
 
 struct LazyVStackExample: View {
 var body: some View {
 ScrollView {
 LazyVStack {
 ForEach(1...1000, id: \.self) { index in
 Text("Item \(index)")
 .frame(height: 50)
 .background(Color.green.opacity(0.2))
 .cornerRadius(8)
 .padding(.horizontal)
 }
 }
 }
 }
 }

 ✅ Fixes:
 
 Only renders visible items
 Better memory performance
 Efficient scrolling with smooth animations
 
 // MARK: - LazyVGrid & LazyHGrid Performance -
 
 Using LazyVGrid and LazyHGrid helps optimize grids for large datasets.
 
 ❌ BAD: Regular Grid with VStack and HStack
 
 struct BadGridExample: View {
 let columns = 3
 
 var body: some View {
 ScrollView {
 VStack {
 ForEach(0..<100) { row in
 HStack {
 ForEach(0..<columns) { col in
 Text("\(row * columns + col)")
 .frame(width: 100, height: 100)
 .background(Color.red.opacity(0.2))
 .cornerRadius(10)
 }
 }
 }
 }
 }
 }
 }

 ❌ Issues:
 
 Loads all rows at once → Bad for large datasets
 Inefficient reuse of views
 
 ✅ GOOD: Using LazyVGrid for Better Performance
 
 struct LazyVGridExample: View {
 let columns = [
 GridItem(.adaptive(minimum: 100)) // Automatically fits items
 ]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 10) {
 ForEach(1...1000, id: \.self) { index in
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

 ✅ Fixes:
 
 Only loads visible grid items
 Scrolls smoothly
 Dynamically adjusts to screen size
 
 // MARK: - Efficient Data Handling -
 
 For complex datasets, avoid using large arrays directly.
 Instead, use onAppear() to load data dynamically.
 
 Example: Loading Data Efficiently with onAppear()
 
 struct EfficientGridExample: View {
 @State private var items: [Int] = Array(1...20)
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 10) {
 ForEach(items, id: \.self) { item in
 Text("Item \(item)")
 .frame(width: 100, height: 100)
 .background(Color.orange.opacity(0.3))
 .cornerRadius(10)
 }
 }
 .padding()
 }
 .onAppear {
 // Simulate fetching more data
 DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
 items.append(contentsOf: 21...40)
 }
 }
 }
 }

 ✅ Fixes:
 
 Loads only 20 items first, then loads more on scroll
 Prevents blocking UI with large dataset
 
 // MARK: - Avoiding Performance Bottlenecks -
 
 ❌ Performance Killers in ScrollView & Grids
 Using VStack or HStack instead of Lazy Stacks
 Loading large images without resizing them
 Not using id: \.self in ForEach (causes unnecessary view updates)
 Using complex calculations inside body
 
 ✅ Optimized Grid & ScrollView Best Practices
 ✔️ Use LazyVGrid / LazyHGrid for efficient scrolling
 ✔️ Use .id() inside ForEach for correct state updates
 ✔️ Load images asynchronously
 ✔️ Use .onAppear() to fetch new data when needed
 ✔️ Minimize modifier changes (e.g., avoid .background() in ForEach)

 // MARK: - Async Image Loading for Performance -
 
 If your grid contains images, use async loading to avoid blocking UI.
 
 struct AsyncImageGrid: View {
 let columns = [GridItem(.adaptive(minimum: 100))]
 
 var body: some View {
 ScrollView {
 LazyVGrid(columns: columns, spacing: 10) {
 ForEach(1...20, id: \.self) { index in
 AsyncImage(url: URL(string: "https://picsum.photos/100?random=\(index)")) { image in
 image.resizable()
 .scaledToFit()
 .frame(width: 100, height: 100)
 .cornerRadius(10)
 } placeholder: {
 ProgressView()
 .frame(width: 100, height: 100)
 }
 }
 }
 .padding()
 }
 }
 }

 ✅ Fixes:
 
 Loads images asynchronously without blocking the UI
 Uses placeholders to prevent empty spaces
 
 */

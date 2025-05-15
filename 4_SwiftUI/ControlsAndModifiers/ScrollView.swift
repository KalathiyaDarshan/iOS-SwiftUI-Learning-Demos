//
//  ScrollView.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - ScrollView -

/*
 
 In SwiftUI, ScrollView allows users to scroll through a large amount of content vertically or horizontally.
 By default, views inside a ScrollView are not constrained by screen size, allowing scrolling beyond the visible area.
 
 Use LazyVStack or LazyHStack when handling large datasets for performance.
 Use .frame(height:) to control scrollable area.
 Use GeometryReader for tracking scroll position.
 Use .refreshable {} to implement pull-to-refresh.
 
 // MARK: - Basic ScrollView Usage: -
 //###############################################################################
 
 // MARK: - Example: A Vertical ScrollView -
 
 ScrollView {
 VStack {
 ForEach(1 ... 50, id: \.self) { index in
 Text("Item \(index)")
 .font(.title)
 .padding()
 }
 }
 }
 
 🔹 Effect: A vertically scrolling list of 50 items.
 
 // MARK: - Example: A Horizontal ScrollView -
 
 ScrollView(.horizontal) {
 HStack {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .font(.title)
 .padding()
 .background(Color.blue.opacity(0.2))
 .cornerRadius(10)
 }
 }
 }
 
 🔹 Effect: A horizontally scrolling list.
 
 // MARK: - ScrollView with Modifiers: -
 //###############################################################################
 
 // MARK: - 1️⃣ showsIndicators(_:) -
 By default, scroll indicators appear while scrolling. You can hide them.
 
 ScrollView(showsIndicators: false) {
 VStack {
 ForEach(1...30, id: \.self) { index in
 Text("Hidden Scroll Indicator \(index)")
 .font(.title2)
 .padding()
 }
 }
 }
 
 🔹 Effect: Hides the scroll bar.
 
 // MARK: - 2️⃣ scrollClipDisabled(_:) (iOS 17+) -
 By default, ScrollView clips its content. Use .scrollClipDisabled() to allow views to extend beyond edges.
 
 ScrollView {
 VStack {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .font(.title)
 .frame(maxWidth: .infinity)
 .padding()
 .background(Color.orange)
 .cornerRadius(10)
 }
 }
 }
 .scrollClipDisabled() // Allows content to extend beyond safe area
 
 🔹 Effect: Extends content beyond safe area.
 
 // MARK: - 3️⃣ .scrollBounceBehavior(_:) (iOS 17+) -
 You can control bounce behavior with .scrollBounceBehavior().
 
 ScrollView {
 VStack {
 ForEach(1...10, id: \.self) { index in
 Text("Item \(index)")
 .padding()
 .background(Color.green.opacity(0.3))
 .cornerRadius(8)
 }
 }
 }
 .scrollBounceBehavior(.basedOnSize) // Options: .automatic, .always, .never
 
 🔹 Effect: Adjusts bounce behavior based on content size.
 
 // MARK: - 4️⃣ .frame(maxHeight:) vs. .frame(height:) -
 To control the size of a ScrollView, use .frame().
 
 ScrollView {
 VStack {
 ForEach(1...10, id: \.self) { index in
 Text("Fixed Height \(index)")
 .padding()
 .background(Color.purple.opacity(0.3))
 }
 }
 }
 .frame(height: 300) // ScrollView height is fixed to 300 points
 
 🔹 Effect: Scrollable content inside a fixed-height container.
 
 // MARK: - 5️⃣ .ignoresSafeArea() -
 Expands the ScrollView beyond safe area.
 
 ScrollView {
 VStack {
 ForEach(1...10, id: \.self) { index in
 Text("Safe Area Ignored \(index)")
 .padding()
 .background(Color.blue.opacity(0.3))
 }
 }
 }
 .ignoresSafeArea()
 
 🔹 Effect: Content extends under the notch and home indicator.
 
 // MARK: - ScrollView with Lazy Stacks: -
 //###############################################################################
 
 // MARK: - 1️⃣ Using LazyVStack for Performance -
 If the ScrollView contains a large number of elements, use LazyVStack.
 
 ScrollView {
 LazyVStack {
 ForEach(1...1000, id: \.self) { index in
 Text("Efficient Item \(index)")
 .padding()
 .background(Color.gray.opacity(0.2))
 }
 }
 }
 
 🔹 Effect: Renders only visible items for better performance.
 
 // MARK: - 2️⃣ Using LazyHStack for Horizontal Performance -
 For horizontal scrolling, use LazyHStack.
 
 ScrollView(.horizontal) {
 LazyHStack {
 ForEach(1...1000, id: \.self) { index in
 Text("Lazy Item \(index)")
 .padding()
 .background(Color.orange.opacity(0.3))
 }
 }
 }
 
 🔹 Effect: Optimized horizontal scrolling.
 
 // MARK: - ScrollView with GeometryReader: -
 //###############################################################################
 
 You can detect the scroll position using GeometryReader.
 
 // MARK: - Example: Detecting Scroll Offset -
 
 ScrollView {
 GeometryReader { geometry in
 Color.clear.preference(key: ScrollOffsetKey.self, value: geometry.frame(in: .global).minY)
 }
 .frame(height: 0)
 
 VStack {
 ForEach(1...50, id: \.self) { index in
 Text("Scrolled Item \(index)")
 .padding()
 }
 }
 }
 .onPreferenceChange(ScrollOffsetKey.self) { value in
 print("Scroll Offset: \(value)")
 }
 
 🔹 Effect: Prints the scroll offset in the console.
 
 // MARK: - ScrollView with RefreshControl (Pull to Refresh): -
 //###############################################################################
 
 SwiftUI does not have a built-in refresh control, but you can create one.
 
 Example: Pull to Refresh
 
 struct RefreshableScrollView: View {
 @State private var items = Array(1...20)
 
 var body: some View {
 ScrollView {
 VStack {
 ForEach(items, id: \.self) { item in
 Text("Item \(item)")
 .padding()
 }
 }
 }
 .refreshable {
 await fetchNewData()
 }
 }
 
 func fetchNewData() async {
 await Task.sleep(2_000_000_000) // Simulate network delay
 items.append(items.count + 1)   // Add new item
 }
 }
 
 🔹 Effect: Pulling down refreshes the list.
 
 */

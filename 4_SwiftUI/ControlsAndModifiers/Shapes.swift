//
//  Shapes.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Shapes -

/*
 
 SwiftUI provides built-in shape views such as Rectangle, Circle, Ellipse, Capsule, RoundedRectangle, and Path to create custom shapes.
 These shapes can be customized using modifiers like .fill(), .stroke(), .frame(), .shadow(), and more.
 
 // MARK: - Built-in Shapes in SwiftUI: -
 //###############################################################################
 
 struct ShapeView: View {
 var body: some View {
 VStack {
 Rectangle()
 .fill(Color.blue)
 .frame(width: 100, height: 50)
 
 Circle()
 .fill(Color.red)
 .frame(width: 100, height: 100)
 
 Ellipse()
 .fill(Color.green)
 .frame(width: 150, height: 80)
 
 Capsule()
 .fill(Color.orange)
 .frame(width: 150, height: 60)
 
 RoundedRectangle(cornerRadius: 20)
 .fill(Color.purple)
 .frame(width: 150, height: 80)
 }
 }
 }
 
 ✅ Each shape is filled with color and adjusted using .frame().
 
 // MARK: - Shape Modifiers in SwiftUI: -
 //###############################################################################
 
 - // MARK: - 1️⃣ Filling a Shape: -
 
 Circle()
 .fill(Color.blue)
 .frame(width: 100, height: 100)
 
 ✅ .fill(Color.blue) fills the entire shape with a color.
 
 - // MARK: - 2️⃣ Adding Stroke (Outline): -
 
 Rectangle()
 .stroke(Color.red, lineWidth: 5)
 .frame(width: 100, height: 50)
 
 ✅ .stroke(Color, lineWidth:) adds an outline without filling the shape.\
 
 - // MARK: - 3️⃣ Filling and Stroking Together: -
 You can combine both fill and stroke using .overlay():
 
 RoundedRectangle(cornerRadius: 20)
 .fill(Color.yellow)
 .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 4))
 .frame(width: 150, height: 80)
 
 - // MARK: - 4️⃣ Changing Opacity: -
 
 Circle()
 .fill(Color.green)
 .opacity(0.5) // 50% transparent
 .frame(width: 100, height: 100)
 
 ✅ .opacity(0.5) reduces visibility.
 
 - // MARK: - 5️⃣ Adding Shadow to a Shape: -
 
 Rectangle()
 .fill(Color.blue)
 .frame(width: 150, height: 70)
 .shadow(color: .gray, radius: 10, x: 5, y: 5)
 
 ✅ .shadow(radius:) creates a shadow effect.
 
 // MARK: - Layering Shapes Using ZStack: -
 //###############################################################################
 
 ZStack {
 Circle()
 .fill(Color.blue)
 .frame(width: 150, height: 150)
 
 Text("SwiftUI")
 .font(.title)
 .foregroundColor(.white)
 }
 
 ✅ ZStack overlays text on a circle.
 
 // MARK: - Gradient Fill in Shapes: -
 //###############################################################################
 
 SwiftUI allows gradient fills using LinearGradient, RadialGradient, and AngularGradient.
 
 - // MARK: - 1️⃣ Linear Gradient Fill: -
 
 Rectangle()
 .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .top, endPoint: .bottom))
 .frame(width: 150, height: 80)
 
 ✅ Top-to-bottom gradient transition.
 
 - // MARK: - 2️⃣ Radial Gradient Fill: -
 
 Circle()
 .fill(RadialGradient(gradient: Gradient(colors: [.purple, .pink]), center: .center, startRadius: 5, endRadius: 50))
 .frame(width: 100, height: 100)
 
 ✅ Radial gradient from center.
 
 - // MARK: - 3️⃣ Angular Gradient Fill: -
 
 Capsule()
 .fill(AngularGradient(gradient: Gradient(colors: [.blue, .green, .orange]), center: .center))
 .frame(width: 150, height: 60)
 
 ✅ Rotating gradient effect.
 
 // MARK: - Custom Shapes Using Path: -
 //###############################################################################
 
 If the built-in shapes don’t meet your needs, you can create custom shapes using Path or Shape protocol.
 
 - // MARK: - 1️⃣ Creating a Custom Triangle: -
 
 struct Triangle: Shape {
 func path(in rect: CGRect) -> Path {
 var path = Path()
 path.move(to: CGPoint(x: rect.midX, y: rect.minY))
 path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
 path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
 path.closeSubpath()
 return path
 }
 }
 
 struct ContentView: View {
 var body: some View {
 Triangle()
 .fill(Color.green)
 .frame(width: 150, height: 150)
 }
 }
 
 - // MARK: - 2️⃣ Creating a Custom Star (five-point star) Shape: -
 
 struct Star: Shape {
 func path(in rect: CGRect) -> Path {
 var path = Path()
 
 let points: [(CGFloat, CGFloat)] = [
 (0.5, 0), (0.62, 0.38), (1, 0.38), (0.68, 0.62), (0.81, 1),
 (0.5, 0.75), (0.19, 1), (0.32, 0.62), (0, 0.38), (0.38, 0.38)
 ]
 
 path.move(to: CGPoint(x: rect.width * points[0].0, y: rect.height * points[0].1))
 
 for point in points.dropFirst() {
 path.addLine(to: CGPoint(x: rect.width * point.0, y: rect.height * point.1))
 }
 
 path.closeSubpath()
 return path
 }
 }
 
 struct ContentView: View {
 var body: some View {
 Star()
 .fill(Color.yellow)
 .frame(width: 150, height: 150)
 }
 }
 
 // MARK: - Transforming Shapes (Rotation, Scaling, and Offsetting): -
 //###############################################################################
 
 - // MARK: - 1️⃣ Rotating a Shape: -
 
 Rectangle()
 .fill(Color.blue)
 .frame(width: 100, height: 50)
 .rotationEffect(.degrees(45)) // Rotates 45 degrees
 
 - // MARK: - 2️⃣ Scaling a Shape: -
 
 Circle()
 .fill(Color.red)
 .frame(width: 100, height: 100)
 .scaleEffect(1.5) // 150% larger
 
 - // MARK: - 3️⃣ Offsetting a Shape: -
 
 Ellipse()
 .fill(Color.green)
 .frame(width: 150, height: 80)
 .offset(x: 20, y: -30) // Moves shape
 
 // MARK: - Animating Shapes in SwiftUI: -
 //###############################################################################
 
 Use @State and .animation() to animate shapes.
 
 struct AnimatingCircle: View {
 @State private var isScaled = false
 
 var body: some View {
 Circle()
 .fill(Color.purple)
 .frame(width: isScaled ? 150 : 100, height: isScaled ? 150 : 100)
 .onTapGesture {
 withAnimation {
 isScaled.toggle()
 }
 }
 }
 }
 
 ✅ Tapping scales the circle.
 
 */

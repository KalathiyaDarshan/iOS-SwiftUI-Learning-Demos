//
//  PrintStatement.swift
//  MSwift_Basics
//
//  Created by Admin on 13/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - print Statement in Swift vs. SwiftUI -

/*
 
 ✅ Works the same in Swift and SwiftUI, but with some differences in behavior due to SwiftUI’s declarative nature.
 
 In Swift (Imperative Approach)
 print() runs once when the function is called.
 
 func greetUser() {
 print("Hello, user!") // Prints once when called
 }
 
 greetUser()
 
 ✅ Console Output:
 Hello, user!
 
 In SwiftUI (Declarative & View Re-renders)
 print() inside body runs multiple times because SwiftUI recomputes views when state changes.
 
 struct ContentView: View {
 var body: some View {
 let _ = print("SwiftUI View is recomputed")
 return Text("Hello, SwiftUI!")
 }
 }
 
 ✅ Console Output:
 SwiftUI View is recomputed
 SwiftUI View is recomputed
 ...
 
 SwiftUI updates views when state changes, so print() might execute multiple times.
 💡 Best Practice: Use onAppear or debugPrint() for debugging in SwiftUI instead.
 
 Text("Hello, SwiftUI!")
 .onAppear { print("View appeared!") }
 
 */

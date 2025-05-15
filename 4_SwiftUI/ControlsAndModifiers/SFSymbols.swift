//
//  SFSymbols.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - SF Symbols -

/*
 
 SF Symbols is Apple's system icon library, containing over 5,000 scalable vector-based symbols that integrate seamlessly with SwiftUI and UIKit.
 These icons adapt to Dynamic Type, bold text settings, and different weights and styles.
 
 // MARK: - Basic Usage of SF Symbols in SwiftUI: -
 //###############################################################################
 
 In SwiftUI, SF Symbols are used with the Image view using the .systemName initializer.
 
 Image(systemName: "heart.fill") // A filled heart icon
 ✅ The "heart.fill" symbol is an SF Symbol that represents a heart with a fill color.
 
 You can browse all available SF Symbols using Apple's SF Symbols App:
 https://developer.apple.com/sf-symbols/
 Once installed, you can search for symbols, check their names, and see different styles and weights.
 
 // MARK: - Changing Size: -
 //###############################################################################
 
 By default, SF Symbols match the system font size. You can modify the size using .font().
 
 Image(systemName: "star")
 .font(.largeTitle) // Increases icon size
 
 ✅ The .font(.largeTitle) modifier scales the SF Symbol size.
 
 // MARK: - Customizing Color: -
 //###############################################################################
 
 Image(systemName: "star.fill")
 .foregroundColor(.yellow) // Changes icon color to yellow
 
 ✅ The .foregroundColor() modifier changes the symbol color.
 
 // MARK: - Adjusting Weight & Style: -
 //###############################################################################
 
 SF Symbols adapt to different font weights like .bold, .regular, and .light.
 
 Image(systemName: "cloud.sun.fill")
 .font(.system(size: 40, weight: .bold))
 
 ✅ The .font(.system(size: 40, weight: .bold)) modifier makes the symbol larger and bold.
 
 // MARK: - Different Styles of the Same Symbol: -
 //###############################################################################
 
 HStack {
 Image(systemName: "heart")          // Outline version
 Image(systemName: "heart.fill")     // Filled version
 Image(systemName: "heart.circle")   // Circular version
 }
 .font(.largeTitle)
 
 ✅ Different variants of the "heart" symbol.
 
 // MARK: - Multi-Color SF Symbols: -
 //###############################################################################
 
 Some SF Symbols support multi-color rendering. You can enable this using .symbolRenderingMode(.multicolor).
 
 Image(systemName: "pencil.tip.crop.circle.badge.plus")
 .symbolRenderingMode(.multicolor) // Enables multi-color rendering
 .font(.largeTitle)
 
 ✅ Multi-color SF Symbols will automatically adapt system colors.
 
 // MARK: - Custom Rendering Modes: -
 //###############################################################################
 
 Monochrome Mode (Default)
 
 Image(systemName: "bolt.fill")
 .symbolRenderingMode(.monochrome) // Default monochrome
 
 Hierarchical Mode (Shades of One Color)
 
 Image(systemName: "person.crop.circle.fill.badge.plus")
 .symbolRenderingMode(.hierarchical)
 .foregroundColor(.blue)
 
 ✅ Hierarchical mode applies different shades of blue to layers.
 
 Palette Mode (Multi-Color with Custom Colors)
 
 Image(systemName: "star.circle.fill")
 .symbolRenderingMode(.palette)
 .foregroundStyle(.yellow, .orange) // Uses custom color layers
 
 ✅ Palette mode allows multiple custom colors.
 
 // MARK: - Scaling SF Symbols: -
 //###############################################################################
 
 SF Symbols can be resized using .imageScale():
 
 Image(systemName: "star.fill")
 .imageScale(.large) // Scales image while maintaining proportions
 
 // MARK: - SF Symbols in Buttons: -
 //###############################################################################
 
 Button(action: {
 print("Button tapped!")
 }) {
 Image(systemName: "play.circle.fill")
 .font(.largeTitle)
 .foregroundColor(.blue)
 }
 
 ✅ This button displays a "Play" icon.
 
 // MARK: - SF Symbols with Text: -
 //###############################################################################
 
 Label("Favorites", systemImage: "star.fill")
 .font(.title)
 .foregroundColor(.yellow)
 
 ✅ The Label view combines text and SF Symbols.
 
 // MARK: - Animated SF Symbols (iOS 17+): -
 //###############################################################################
 
 Apple introduced animated SF Symbols in iOS 17. You can add animations like .contentTransition(.symbolEffect(.replace)).
 
 Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
 .symbolEffect(.pulse) // Adds pulsing animation
 .font(.largeTitle)
 
 ✅ symbolEffect(.pulse) makes the icon pulse.
 
 // MARK: - SF Symbols in Lists: -
 //###############################################################################
 
 List {
 Label("Home", systemImage: "house.fill")
 Label("Settings", systemImage: "gearshape.fill")
 Label("Profile", systemImage: "person.crop.circle")
 }
 
 ✅ This creates a list with SF Symbols.
 
 */

//
//  Text.swift
//  MSwift_Basics
//
//  Created by Admin on 12/02/25.
//  Copyright © 2025 Mayur Mori. All rights reserved.
//

// MARK: - Text -

/*
 
 ✅ Text will render plain text with the system's default font and color.
 Text in SwiftUI is highly customizable with a variety of modifiers.
 You can control font, color, alignment, spacing, opacity, and more.
 Use gradients, shadows, and scaling to enhance text styles dynamically.
 
 // MARK: - Changing Font & Weight: -
 //###############################################################################
 
 Text("SwiftUI Modifiers")
 .font(.title)           // Sets a system-defined title font
 .fontWeight(.bold)      // Makes text bold
 
 // MARK: - Custom Fonts: -
 //###############################################################################
 
 Text("Custom Font Example")
 .font(.custom("AvenirNext-Regular", size: 24))
 
 // MARK: - Changing Text Color: -
 //###############################################################################
 
 Text("Colored Text")
 .foregroundColor(.blue) // Changes text color to blue
 
 // MARK: - Adding Background Color: -
 //###############################################################################
 
 Text("Text with Background")
 .background(Color.yellow) // Adds a yellow background
 
 // MARK: - Text Alignment & Multiline Support: -
 //###############################################################################
 
 Text("Centered Text")
 .frame(width: 200, height: 50)
 .multilineTextAlignment(.center)
 
 // MARK: - Limiting Number of Lines: -
 //###############################################################################
 
 Text("This is a very long text but will be limited to two lines.")
 .lineLimit(2)  // Restricts text to 2 lines
 
 // MARK: - Adjusting Line Spacing: -
 //###############################################################################
 
 Text("This text\nhas extra spacing\nbetween lines.")
 .lineSpacing(10)  // Increases spacing between lines
 
 // MARK: - Italic, Underline & Strikethrough: -
 //###############################################################################
 
 Text("Italic Text")
 .italic() // Makes text italic
 
 Text("Strikethrough Text")
 .strikethrough(true, color: .red) // Adds a red strikethrough
 
 Text("Underlined Text")
 .underline(true, color: .blue) // Adds a blue underline
 
 // MARK: - Adjusting Opacity & Shadow: -
 //###############################################################################
 
 Text("Faded Text")
 .opacity(0.5)  // 50% transparency
 
 Text("Shadowed Text")
 .shadow(color: .gray, radius: 3, x: 2, y: 2)
 
 // MARK: - Scaling & Resizing Text: -
 //###############################################################################
 
 Text("Scalable Text")
 .minimumScaleFactor(0.5) // Text will shrink up to 50% if needed
 
 ✅ If the text does not fit in the available space, it will scale down to 50% of its original size.
 
 // MARK: - Applying Gradients & Custom Styling: -
 //###############################################################################
 
 Text("Gradient Text")
 .font(.largeTitle)
 .foregroundStyle(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
 
 ✅ foregroundStyle() allows applying a gradient to the text.
 
 // MARK: - Combining Multiple Text Views: -
 //###############################################################################
 
 If you need multiple styles within the same text, you can use + to concatenate Text views.
 
 Text("SwiftUI ")
 .font(.title)
 .foregroundColor(.blue) +
 Text("Modifiers")
 .font(.title)
 .foregroundColor(.red)
 
 ✅ The text parts have different colors but are displayed in the same line.
 
 */

//
//  TextEditorView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct TextEditorView: View {
    
    @State var textEditor: String = "This is the starting text."
    
    var body: some View {
        VStack(spacing: 20) {
            TextEditor(text: $textEditor)
                .padding()
                .border(Color.gray,width: 2)
                //.colorMultiply(Color.green)
                
            Button("Submit", action: {
                
            })
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .font(.headline)
        }
        .padding()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}

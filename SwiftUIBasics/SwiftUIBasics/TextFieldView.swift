//
//  TextFieldView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var textField: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            Text(textField)
            
            TextField("Type something here...", text: $textField)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .font(.headline)
            
            Button("Submit", action: {
                
            })
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .font(.headline)
            
            Spacer()
        }
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}

//
//  ColorPickerView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a Color", selection: $backgroundColor,supportsOpacity: true)
                .padding()
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(15)
                .font(.headline)
                .padding(50)
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}

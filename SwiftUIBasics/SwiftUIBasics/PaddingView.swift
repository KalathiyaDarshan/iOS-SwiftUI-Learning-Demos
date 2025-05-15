//
//  PaddingView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct PaddingView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingView()
    }
}

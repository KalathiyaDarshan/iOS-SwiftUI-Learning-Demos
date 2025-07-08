//
//  BindingView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct BindingView: View {
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            BView(backgroundColor: $backgroundColor)
        }
    }
}

private struct BView: View {
     
    @Binding var backgroundColor: Color
    
    var body: some View {
        ZStack {
            Button(action: {
                backgroundColor = (backgroundColor == .orange) ? .green : .orange
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(10)
            })

        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}

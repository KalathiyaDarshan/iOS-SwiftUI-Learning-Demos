//
//  SheetsView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct SheetsView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Open")
                    .font(.system(size: 24, weight: .regular, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
    
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}
struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}

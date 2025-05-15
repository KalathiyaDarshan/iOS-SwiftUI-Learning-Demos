//
//  SafeAreaView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 24/03/25.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        //.padding(.top,20)
        //.background(Color.blue)
        .background(
            Color.red
            //.edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea(edges: .top)
        )

//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
    }
}

struct SafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaView()
    }
}

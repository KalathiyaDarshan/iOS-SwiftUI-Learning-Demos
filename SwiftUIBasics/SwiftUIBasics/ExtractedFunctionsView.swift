//
//  ExtractedFunctionsView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct ExtractedFunctionsView: View {
    @State var backGroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //BackGround
            backGroundColor
            .edgesIgnoringSafeArea(.all)
            
            //Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backGroundColor = (backGroundColor == .pink) ? .yellow : .pink
    }
}

struct ExtractedFunctionsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsView()
    }
}

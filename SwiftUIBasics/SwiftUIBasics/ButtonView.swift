//
//  ButtonView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 24/03/25.
//

import SwiftUI

struct ButtonView: View {
    
    @State var title: String = "This is my title"
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "BUTTON WAS PRESSED"
                print(title)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

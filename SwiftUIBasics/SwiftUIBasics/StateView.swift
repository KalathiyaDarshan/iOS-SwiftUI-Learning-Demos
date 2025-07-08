//
//  StateView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct StateView: View {
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        myTitle = "Button 1 was pressed"
                        count += 1
                        print("Button 1")
                    }
                    
                    Button("Button 2") {
                        myTitle = "Button 2 was pressed"
                        count -= 1
                        print("Button 2")
                    }
                }
            }
            .foregroundColor(.black)
            
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}

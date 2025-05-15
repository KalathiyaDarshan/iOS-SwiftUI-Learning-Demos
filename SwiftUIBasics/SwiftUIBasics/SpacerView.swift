//
//  SpacerView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
            
        }
        //.background(Color.yellow)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}

//
//  ContextMenuView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.purple)
        .cornerRadius(30)
        .contextMenu {
            Button(action: {
                
            }, label: {
                Label("Share post", systemImage: "square.and.arrow.up")
            })
            
            Button(action: {
                
            }, label: {
                Label("Report post", systemImage: "arrow.turn.up.right")
            })
            
            Button(action: {
                
            }, label: {
                Label("Like post", systemImage: "heart")
            })
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}

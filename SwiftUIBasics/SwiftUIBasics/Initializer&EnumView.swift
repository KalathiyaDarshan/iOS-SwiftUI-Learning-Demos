//
//  Initializer&EnumView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct Initializer_EnumView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }}

struct Initializer_EnumView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Initializer_EnumView(count: 100, fruit: .apple)
            Initializer_EnumView(count: 46, fruit: .orange)
        }
    }
}

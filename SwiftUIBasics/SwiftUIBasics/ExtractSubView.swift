//
//  ExtractSubView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        ZStack {
            contetLayer
        }
    }
    
    var contetLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1)
            MyItem(title: "Oranges", count: 20)
            MyItem(title: "Bananas", count: 34)
            MyItem(title: "Pinaple", count: 89)
        }
    }
}

struct MyItem: View {
    let title: String
    let count: Int

   private let randomColor = Color(
        red: .random(in: 0...1),
        green: .random(in: 0...1),
        blue: .random(in: 0...1)
    )
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .foregroundColor(Color.white)
        .background(randomColor)
        .cornerRadius(10)
    }
}

struct ExtractSubView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubView()
    }
}

//
//  ScrollViewVC.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct ScrollViewVC: View {
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { rowindex in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.random)
                                    .frame(width: 200, height: 150)
                                    .overlay (
                                        Text("Rows: \(rowindex+1) \nColum: \(index+1)")
                                            .font(.system(size: 26, weight: .semibold, design: .serif))
                                    )
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
//        ScrollView(.vertical, showsIndicators: false) {
//            VStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                }
//
//            }
//        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewVC()
    }
}

extension Color {
    static var random: Color {
        Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}

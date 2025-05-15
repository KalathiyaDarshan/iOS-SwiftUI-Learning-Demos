//
//  ForEachView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct ForEachView: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
//            ForEach(0..<10) { index in
//                Circle()
//                    .frame(height: 50)
//            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}

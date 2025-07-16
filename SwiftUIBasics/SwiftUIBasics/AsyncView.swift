//
//  AsyncView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 15/07/25.
//

import SwiftUI

struct AsyncView: View {
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        ZStack {
            //AsyncImage(url: url)
//            AsyncImage(url: url, content: { returnImage in
//                returnImage
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100,height: 100)
//                    .cornerRadius(50)
//
//            }, placeholder: {
//                ProgressView()
//            })
            
            AsyncImage(url: url) { phase in
                switch phase {
                    case .empty:
                        ProgressView()
                        
                    case .success(let returnImage):
                        returnImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100,height: 100)
                            .cornerRadius(50)
                        
                    case .failure:
                        Image(systemName: "questionmark")
                            .font(.headline)
                        
                    default:
                        Image(systemName: "questionmark")
                            .font(.headline)

                }
            }
        }
    }
}

struct AsyncView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncView()
    }
}

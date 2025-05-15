//
//  StackView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct StackView: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        // ----------------------------------------------------------
        //           MARK: - Demo 4 -
        // ----------------------------------------------------------
        
        // ----------------------------------------------------------
        //           MARK: - Demo 3 -
        // ----------------------------------------------------------
//        VStack(alignment: .center) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100,height: 100)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100,height: 100)
//        }
        
        // ----------------------------------------------------------
        //           MARK: - Demo 2 -
        // ----------------------------------------------------------
//           VStack //HStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100,height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100,height: 100)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100,height: 100)
//        }
        
        // ----------------------------------------------------------
        //           MARK: - Demo 1 -
        // ----------------------------------------------------------
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

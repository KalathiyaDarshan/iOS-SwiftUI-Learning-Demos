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
            VStack {
                Rectangle()
                    .frame(height: 300)
                Rectangle()
                    .frame(height: 300)
                Rectangle()
                    .frame(height: 300)
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewVC()
    }
}

//
//  FrameworkListCell.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

struct FrameworkListCell: View {
    
    let framework: Framework
    
    var body: some View {
        HStack(spacing: 20) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            Spacer()
        }
        .padding()
    }
}

//
//  FrameworkGridColumView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

struct FrameworkGridColumView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

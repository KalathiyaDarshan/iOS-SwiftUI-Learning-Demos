//
//  FrameworkGridView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 03/03/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
                                        
    var body: some View {
        LazyVGrid(columns: columns) {
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
            FrameworkTitleView(name: "app-clip", imageName: "App Clip")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .frame(width: 90,height: 90)
            Text(imageName)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
}

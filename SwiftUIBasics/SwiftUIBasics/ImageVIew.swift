//
//  ImageVIew.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct ImageVIew: View {
    var body: some View {
        Image("ic_google")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green) // Set a Renderd as a Template Image
            //.clipped()
            //.cornerRadius(150)
           // .clipShape(
            //Circle()
            //RoundedRectangle(cornerRadius: 25.0)
           // Ellipse()
            //Circle()
            //)
    }
}

struct ImageVIew_Previews: PreviewProvider {
    static var previews: some View {
        ImageVIew()
    }
}

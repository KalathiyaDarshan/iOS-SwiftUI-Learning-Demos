//
//  ShapesView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/03/25.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        //RoundedRectangle(cornerRadius: 10)
            .fill(Color.green)
            .foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.4, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
            //.strokeBorder(Color.red)
            //.frame(width: 300, height: 200)
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}

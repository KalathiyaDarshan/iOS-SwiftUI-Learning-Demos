//
//  SliderView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct SliderView: View {
    
    @State var sliderValue: Double = 10
    
    var body: some View {
        VStack(spacing: 15) {
            
            Text("SliderValue: \(Int(sliderValue))")
                .accentColor(Color.red)
            
           // Slider(value: $sliderValue)
            Slider(value: $sliderValue,in: 0...100,step: 2.0)
        }
        .padding(.horizontal,50)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}

//
//  StepperView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct StepperView: View {
    
    @State var stapperValue: Int = 10
    @State var widthIncriment: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
           // Stepper("Stepper \(stapperValue)", value: $stapperValue)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncriment, height: 100)
            
            Stepper("Round Rectangle Width") {
                //Incriment
                widthIncriment += (widthIncriment > -1 ? 10 : 0)
                
            } onDecrement: {
                widthIncriment -= (widthIncriment > 0 ? 10 : 0)
            }

        }
        .padding(50)
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}

//
//  AnimationView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.green : Color.orange)
                    .frame(width: isAnimated ? 300 : 100, height: isAnimated ? 300 : 100)
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? -200 : 0)
                    .animation(.default)
                
                Spacer()
                
                Button(action: {
                    //withAnimation(.default) {
                        // withAnimation(Animation.default.delay(2.0)) {
                        //  withAnimation(Animation.default.repeatCount(5,autoreverses: true)) {
                        //   withAnimation(Animation.default.repeatForever(autoreverses: true)) {
                        isAnimated.toggle()
                    //}
                }, label: {
                    Text("Animat")
                        .font(.system(size: 24, weight: .regular, design: .serif))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}

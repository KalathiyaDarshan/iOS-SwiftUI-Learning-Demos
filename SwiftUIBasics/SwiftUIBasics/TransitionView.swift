//
//  TransitionView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 07/07/25.
//

import SwiftUI

struct TransitionView: View {

    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
                        
            VStack {
                Button(action: {
                    showView.toggle()
                    
                }, label: {
                    Text("Start Transition")
                        .font(.system(size: 24, weight: .regular, design: .serif))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                })
                Spacer()
                
                if showView {
                    RoundedRectangle(cornerRadius:  30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                       // .transition(.move(edge: .bottom))
                        .transition(.asymmetric(insertion: .move(edge: .leading),
                                                removal: AnyTransition.opacity.animation(.easeInOut)
                                               ))
                        .animation(.spring())
                      //  .transition(AnyTransition.opacity.animation(.easeInOut))
                       // .transition(AnyTransition.scale.animation(.easeInOut))
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}

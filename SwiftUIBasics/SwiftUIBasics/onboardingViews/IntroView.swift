//
//  IntroView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 15/07/25.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSinedIn: Bool = false
    
    var body: some View {
        ZStack {
            //Background
            RadialGradient(gradient: Gradient(colors: [Color.purple,Color.blue]),
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
           
            /*
            if user is sign in
            Profile view
            else
            onboarding view
             */
            
            if currentUserSinedIn {
                ProfileView()
                    .padding()
                
            }else {
                OnboardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

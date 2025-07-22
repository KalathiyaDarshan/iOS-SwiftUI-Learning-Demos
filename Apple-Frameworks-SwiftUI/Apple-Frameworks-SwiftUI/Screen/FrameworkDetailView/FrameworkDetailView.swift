//
//  FrameworkDetailView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack() {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkGridColumView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
                
                Spacer()
                
                Button {
                   isShowingSafariView = true
                } label: {
                    Text("Learn More")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                }
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .foregroundColor(Color.white)
                .clipShape(Capsule())
                .padding()
            }
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: Framework(name: "App Clips",
                                                 imageName: "app-clip",
                                                 urlString: "https://developer.apple.com/app-clips",
                                                 description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly.\n\nWhether they're ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store."),isShowingDetailView: .constant(false))
    }
}

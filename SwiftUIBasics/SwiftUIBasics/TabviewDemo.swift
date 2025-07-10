//
//  TabviewDemo.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct TabviewDemo: View {
    
    @State var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {

            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

private struct HomeView : View {
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                TabView {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.green)
                    RoundedRectangle(cornerRadius: 20)
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.yellow)
                }
                .padding()
                .frame(height: 400)
                .tabViewStyle(PageTabViewStyle())
            }

        }

    }
}

private struct  BrowseView: View {
    
    let icons: [String] = ["heart.fill","globe","house.fill","person.fill"]
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("BROWSE TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                TabView {
                    ForEach(icons,id: \.self) { icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .padding(40)
                    }
                }
                .background(
                    RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300)
                )
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300)
            }
        }
    }
}

private struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.top)
            
            Text("PROFILE TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct TabviewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabviewDemo()
    }
}

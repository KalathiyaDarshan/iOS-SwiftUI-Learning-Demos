//
//  ProfileView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 15/07/25.
//

import SwiftUI

struct ProfileView: View {
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSinedIn: Bool = false
    
    var body: some View {
        VStack() {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0 ) year old!")
            Text("This gender is \(currentUserGender ?? "unknown")")
            
            
            Button("Sign out", action: {
                signOut()
            })
            .foregroundColor(Color.red)
            .padding()
            
        }
        .font(.title)
        .foregroundColor(Color.purple)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSinedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

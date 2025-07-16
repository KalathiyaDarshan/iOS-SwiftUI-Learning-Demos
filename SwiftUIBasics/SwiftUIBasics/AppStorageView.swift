//
//  AppStorageView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 15/07/25.
//

import SwiftUI

struct AppStorageView: View {
    
    @State var name: String = ""
    @AppStorage("name") var userName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            

            Text(userName ?? "User Name not Found")
                .padding(.bottom,40)

            TextField("Enter User Name", text: $name)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .font(.headline)
            
            Button("Save", action: {
                userName = name
            })
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .font(.headline)
        }
        .padding()
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}

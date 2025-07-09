//
//  AlertView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 08/07/25.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        ZStack {
            Button(action: {
                showAlert.toggle()
            }, label: {
                Text("Show Alert")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(10)
            })
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("There was an error!"))
            })
            /// iOS 15+
//            .alert("There was an error!", isPresented: $showAlert) {
//                Button("Retry",role: .destructive) {
//                    print("Trying again...")
//                }
//
//                Button("Cancel", role: .cancel) { }
//            } message: {
//                Text("Please check your internet connection.")
//            }
           

        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}

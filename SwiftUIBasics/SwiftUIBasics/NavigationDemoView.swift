//
//  NavigationDemoView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 08/07/25.
//

import SwiftUI

struct NavigationDemoView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Go Next Screen", destination: Text("Second Screen"))
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title")
            //.navigationBarTitleDisplayMode(.automatic)
          //  .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: Image(systemName: "gear")
            )
            
            ///NavigationBar is a deprecated, after a iOS 16 use toolbar
//            .toolbar(.visible, for: .navigationBar)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                   Image(systemName: "person.fill")
//                }
//
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Image(systemName: "gear")                }
//            }
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemoView()
    }
}

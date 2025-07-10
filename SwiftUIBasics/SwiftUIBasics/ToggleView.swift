//
//  ToggleView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct ToggleView: View {
    
    @State var isToggleOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status: ")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isToggleOn) {
                Text("Switch")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.black))
            
            Spacer()
        }
        .padding(.horizontal,50)
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}

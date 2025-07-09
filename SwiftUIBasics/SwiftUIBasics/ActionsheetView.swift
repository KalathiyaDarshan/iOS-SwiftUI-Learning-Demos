//
//  ActionsheetView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 08/07/25.
//

import SwiftUI

struct ActionsheetView: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        Button(action: {
            showActionSheet.toggle()
        }, label: {
            Text("Show Action Sheet")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.black)
                .cornerRadius(10)
        })
        .actionSheet(isPresented: $showActionSheet, content: {
           // ActionSheet(title: Text("This is the title"))
         
            let button1: ActionSheet.Button = .default(Text("Defult"))
            let button2: ActionSheet.Button = .destructive(Text("destructive"))
            let button3: ActionSheet.Button = .cancel()
        
            return ActionSheet(title: Text("This is the title"),
                        message: Text("This is a description"),
                        buttons: [button1,button2,button3])
        })
        
        ///✅ Use .confirmationDialog (iOS 15+)
//        .confirmationDialog("Choose Option", isPresented: $showActionSheet, titleVisibility: .visible) {
//            Button("Edit") {
//                // Edit action
//            }
//
//            Button("Delete", role: .destructive) {
//                // Delete action
//            }
//            Button("Cancel", role: .cancel) {}
//        }
    }
}

struct ActionsheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetView()
    }
}

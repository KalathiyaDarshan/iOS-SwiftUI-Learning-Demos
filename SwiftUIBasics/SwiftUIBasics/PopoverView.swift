//
//  PopoverView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 08/07/25.
//
///✅ .popover is only fully supported on iPad and macOS.

import SwiftUI

struct PopoverView: View {
    @State private var isShowingPopover = false
    
    
    var body: some View {
        Button("Show Popover") {
            self.isShowingPopover = true
        }
        .popover(
            isPresented: $isShowingPopover, arrowEdge: .bottom
        ) {
            Text("Popover Content")
                .padding()
        }
    }
//    @State private var showPopover = false
//
//    var body: some View {
//        Button("Show Popover") {
//            showPopover.toggle()
//        }
//        .buttonStyle(.borderedProminent)
//        .popover(isPresented: $showPopover,
//                 attachmentAnchor: .point(.topLeading),
//                 content: {
//            Text("This is a Popover")
//                .padding()
//                .frame(minWidth: 300, maxHeight: 400)
//                .background(.red)
//                //.presentationCompactAdaptation(.popover)
//        })
//    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}

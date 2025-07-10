//
//  PickerView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 10/07/25.
//

import SwiftUI

struct PickerView: View {
    
  //  @State var selectedAge: String = "18"
    @State var selectedItem: String = "Most Recent"
    let segmentItem: [String] = ["Most Recent", "Most Popular", "Most Liked"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    
    var body: some View {
        
        Picker("Item" , selection: $selectedItem, content: {
            ForEach(segmentItem.indices) { index in
                Text(segmentItem[index])
                    .tag(segmentItem[index])
            }
        })
        .pickerStyle(SegmentedPickerStyle())
      //  .background(Color.blue)
//        VStack {
//            Text("Age: \(selectedAge)")
//
//            Picker("Select Age", selection: $selectedAge, content: {
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .tag("\(number)")
//                }
//            })
//            .pickerStyle(.inline)
//        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}

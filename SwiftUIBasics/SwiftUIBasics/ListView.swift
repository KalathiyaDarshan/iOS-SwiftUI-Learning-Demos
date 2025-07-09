//
//  ListView.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 08/07/25.
//

import SwiftUI

struct ListView: View {
    
    @State var fruits: [String] = ["Apple", "Banana", "orange", "peach"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits,id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    })
                    
                    .onMove(perform: { indices, newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                } header: {
                    Text("Fruits")
                } footer: {
                    Text("Total Fruits \(fruits.count)")
                }
            }
            .listStyle(DefaultListStyle()) //DefaultListStyle(), PlainListStyle(),GroupedListStyle(), InsetGroupedListStyle(),InsetListStyle(), SidebarListStyle
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

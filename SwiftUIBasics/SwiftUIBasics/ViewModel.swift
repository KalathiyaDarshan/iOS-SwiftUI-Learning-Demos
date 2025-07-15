//
//  ViewModel.swift
//  SwiftUIBasics
//
//  Created by Darshan Kalathiya on 14/07/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel:  ObservableObject {
    
    @Published var arrfruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruits1 = FruitModel(name: "Orange", count: 1)
        let fruits2 = FruitModel(name: "Banana", count: 2)
        let fruits3 = FruitModel(name: "Watermelon", count: 88)
        let fruits4 = FruitModel(name: "Apple", count: 30)
        
        isLoading  = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            self.arrfruits.append(contentsOf: [fruits1,fruits2,fruits3,fruits4])
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        arrfruits.remove(atOffsets: index)
    }
}

struct ViewModel: View {
    
  @StateObject  var objFruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {

        NavigationView {
            List {
                
                if objFruitViewModel.isLoading {
                    ProgressView()
                }else {
                    ForEach(objFruitViewModel.arrfruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: objFruitViewModel.deleteFruit)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear {
                objFruitViewModel.getFruits()
            }
        }
    }
}

struct ViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ViewModel()
    }
}

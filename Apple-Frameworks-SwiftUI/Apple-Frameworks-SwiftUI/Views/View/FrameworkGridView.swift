//
//  FrameworkGridView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @ObservedObject var viewModel: FrameworkViewModel
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: viewModel.gridColum(numberOfColum: 3)) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkGridColumView(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
            
            /// Horizontal (LazyHGrid) Grid View
            /*
             let rows = [
             GridItem(.flexible()),
             GridItem(.flexible()),
             GridItem(.flexible()),
             GridItem(.flexible())
             ]
             
             ScrollView(.horizontal) {
             LazyHGrid(rows: rows, spacing: 20) {
             ForEach(MockData.frameworks) { framework in
             FrameworkTitleView(framework: framework)
             }
             }
             }
             */
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView(viewModel: FrameworkViewModel())
    }
}

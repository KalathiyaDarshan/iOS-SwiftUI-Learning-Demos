//
//  FrameworkListView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

struct FrameworkListView: View {
    
    @ObservedObject var viewModel: FrameworkViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(MockData.frameworks) { framework in
                    FrameworkListCell(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
        }

    }
}

struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView(viewModel: FrameworkViewModel())
    }
}

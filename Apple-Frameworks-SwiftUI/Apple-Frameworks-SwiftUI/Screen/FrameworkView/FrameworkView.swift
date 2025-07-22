//
//  FrameworkView.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 03/03/25.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
        
    var body: some View {
        NavigationStack {
            
            Group {
                viewModel.isGridView ? AnyView(FrameworkGridView(viewModel: viewModel)) :
                AnyView(FrameworkListView(viewModel: viewModel))
            }
            .padding()
            .navigationTitle("🍎 FrameWorks")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    HStack {
                        Button {
                            viewModel.isGridView.toggle()
                        }label: {
                            Image(systemName: viewModel.isGridView ? "square.grid.3x3" : "list.bullet")
                                .padding()
                        }
                    }
                }
            }
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                if let framework = viewModel.selectedFramework {
                    FrameworkDetailView(framework: framework,isShowingDetailView: $viewModel.isShowingDetailView )
                }
            })
        }
    }
}

struct FrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkView()
    }
}

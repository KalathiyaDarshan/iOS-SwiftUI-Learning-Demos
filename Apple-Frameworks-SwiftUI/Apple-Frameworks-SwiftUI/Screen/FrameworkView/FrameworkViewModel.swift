//
//  FrameworkViewModel.swift
//  Apple-Frameworks-SwiftUI
//
//  Created by Darshan Kalathiya on 17/07/25.
//

import SwiftUI

final class FrameworkViewModel : ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isGridView: Bool = false
    @Published var isShowingDetailView = false
    
    func gridColum(numberOfColum: Int) -> [GridItem] {
        return Array(repeating: GridItem(.flexible()), count: numberOfColum)
    }
}


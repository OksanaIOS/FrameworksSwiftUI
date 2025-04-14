//
//  FrameworkGridViewModel.swift
//  FrameworkSwiftUI
//
//  Created by Vladimir on 12/04/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? = nil {
        
        didSet {
            isShowingDetailView = true
            
        }
    }
        @Published var isShowingDetailView = false
    
    let colomns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
}



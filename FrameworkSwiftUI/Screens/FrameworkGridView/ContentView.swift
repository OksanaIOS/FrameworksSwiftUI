//
//  ContentView.swift
//  FrameworkSwiftUI
//
//  Created by Vladimir on 08/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
   
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.colomns) {
                    ForEach(MockData.frameworks, id: \.self) { framework in
                        FrameworkTitleView(framework: framework)
                            .preferredColorScheme(.dark)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
        
    }
}

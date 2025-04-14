//
//  FrameworkDetailView.swift
//  FrameworkSwiftUI
//
//  Created by Vladimir on 09/04/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowSafariView = false
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowSafariView = true
            } label: {
                AFButton(title: "Learn More")
                
            }
            
            Spacer()
        }
        .sheet(isPresented: $isShowSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
}

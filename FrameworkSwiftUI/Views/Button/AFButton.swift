//
//  AFButton.swift
//  FrameworkSwiftUI
//
//  Created by Vladimir on 10/04/25.
//

import SwiftUI

struct AFButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
        
    }
}

#Preview {
    AFButton(title: "Tap Me")
}

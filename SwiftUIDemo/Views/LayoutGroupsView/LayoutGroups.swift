//
//  LayoutGroups.swift
//  SwiftUIDemo
//
//  Created by macadmin on 08/05/21.
//

import SwiftUI

struct LayoutGroups: View {
    var body: some View {
        ZStack {
            Color.orange
                .opacity(0.5)
                .ignoresSafeArea()
                .colorMultiply(.gray)
            
            VStack(spacing: 20) {
                Spacer()
                TitleView()
                DescriptionView()
            }
            .padding()
        }
    }
}

struct LayoutGroups_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LayoutGroups()
                .previewDisplayName("iPhone 12")
                .previewLayout(.sizeThatFits)
            LayoutGroups()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("8")
                .environment(\.colorScheme, .dark)
        }
    }
}

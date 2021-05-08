//
//  TitileView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 08/05/21.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image(systemName: "flag").font(Font.system(size: 40))
                    .alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
                        dimension[VerticalAlignment.center] + 20
                    })
                
                VStack(alignment: .leading) {
                    Text("New York").font(Font.system(size: 35)).fontWeight(.heavy)
                    Text("⭐️⭐️⭐️⭐️⭐️")
                        .font(.title)
                        .shadow(color: .black, radius: 2, x: 0.0, y: 0.0)
                }
                
                Spacer()
                
                Text("🌎").font(Font.system(size: 35))
            }
            .padding()
            .background(Color.green.opacity(0.4))
        }
        .cornerRadius(20)
    }
}

struct TitileView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}

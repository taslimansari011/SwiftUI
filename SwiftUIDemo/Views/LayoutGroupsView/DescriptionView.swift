//
//  DescriptionView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 08/05/21.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack {
            
            Text("New york city comprises 5 boroughs sittings where the Hudson river meets the Atlantic Ocean. Its iconic sites includes skyscrapers such as the Empire State Building and Central Park. Broadway theater is staged in neon lit Times Square. New york city comprises 5 boroughs sittings where the Hudson river meets the Atlantic Ocean. Its iconic sites includes skyscrapers such as the Empire State Building and Central Park. Broadway theater is staged in neon lit Times Square.")
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.black)
                .padding()
        }
        .background(Color.white.opacity(0.8))
        .cornerRadius(20)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}

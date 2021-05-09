//
//  MyButtonView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 09/05/21.
//

import SwiftUI

// Custom Button Style
struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
        let pressed = configuration.isPressed
        return configuration.label
            .padding()
            .foregroundColor(pressed ? .red : .green)
            .cornerRadius(8)
            .border(Color.black, width: 1)
    }
}

struct MyButtonView: View {
    
    @State private var title = "Default Title"
    
    var body: some View {
        VStack {
            Text(title)
            Button(action: {
                title = "New Title"
            }) {
                Text("Change title")
            }.buttonStyle(MyButtonStyle())
        }
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MyButtonView()
    }
}

//
//  PropertyWrappersView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 08/05/21.
//

import SwiftUI

struct PropertyWrappersView: View {
    
    // @Environment
    @Environment(\.colorScheme) var mode
    
    // @State
//    @State private var title: String = "Default title"
    @State private var titleUpdated: Bool = false
    @State private var textInput: String = ""
    @ObservedObject var appData = AppData() // ObservedObject
    
    var body: some View {
        VStack {
            HeaderView(title: $appData.title)
                .foregroundColor(titleUpdated ? .red : .gray)
            
            TextField("Type Something", text: $textInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                appData.title = textInput
                titleUpdated = true
            }) {
                Text("Change title")
                    .font(.title)
                    .foregroundColor(mode == .dark ? .yellow : .blue)
            }
            
        }
    }
}

// @Binding
struct HeaderView: View {
    
    @Binding var title: String
    
    var body: some View {
        Text(title + #"(\#(title.count))"#)
            .font(.title)
            .padding()
    }
}

struct PropertyWrappersView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappersView().environment(\.colorScheme, .light)
    }
}

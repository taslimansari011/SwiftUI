//
//  MyTextField.swift
//  SwiftUIDemo
//
//  Created by macadmin on 09/05/21.
//

import SwiftUI

struct MyTextFieldView: View {
    
    @State private var title = "Default Title"
    @State private var textInput = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text(title)
                .lineLimit(1)
                .padding()
                .font(.title)
                .background(Color.yellow)
            
            TextField("Enter Title", text: $textInput, onEditingChanged: { isChanged in }, onCommit: {
                assignTitle()
            })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocapitalization(.allCharacters)
            
            SecureField("Enter Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                title = textInput
            }) {
                Text("Save")
            }.buttonStyle(MyButtonStyle())
            
            Spacer()
        }.padding(.top, 30)
    }
    
    func assignTitle() {
        title = textInput
    }
}

struct MyTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextFieldView()
    }
}

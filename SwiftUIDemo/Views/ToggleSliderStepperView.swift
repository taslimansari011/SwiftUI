//
//  ToggleSliderStepperView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 09/05/21.
//

import SwiftUI

// Custom Toggle Style
struct MyToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .font(Font.system(size: 40))
                .foregroundColor(.blue)
                .onTapGesture {
                    configuration.$isOn.wrappedValue.toggle()
                }
        }
    }
}

struct ToggleSliderStepperView: View {
    
    var body: some View {
        VStack {
            MyToggle()
        }
    }
}

// Toggle View
struct MyToggle: View {
    
    @State private var title = "On"
    @State private var isOn = true
    
    var body: some View {
        return VStack {
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "On" : "Off")
            }).padding()
            
            HStack {
                Toggle("", isOn: $isOn)
                    .labelsHidden()
                    .padding()
                
                Text(isOn ? "AA" : "ZZ")
                    .padding(7)
                    .background(Color.yellow)
            }
            
            Toggle(isOn: $isOn, label: {
                Text(isOn ? "On" : "Off")
            })
            .padding()
            .toggleStyle(MyToggleStyle())
            
            MySlider()
            
            MyStepperView()
            
            Spacer()
        }
    }
}

// Slider View
struct MySlider: View {
    
    @State private var sliderValue: Float = 50
    @State private var valueChanged = false
    
    var body: some View {
        VStack {
            Text("\(Int(sliderValue))")
                .padding()
                .background(valueChanged ? Color.yellow : Color.clear)
            Slider(value: $sliderValue, in: 0...100, step: 1).padding()
            Slider(value: $sliderValue, in: 0...100, step: 1, onEditingChanged: { value in
                valueChanged.toggle()
            }).padding()
        }
    }
}

// Stepper View
struct MyStepperView: View {
    
    @State private var value = 0
    @State private var valueChanged = false
    
    var body: some View {
        VStack {
            Text("\(value)").padding()
            Stepper("Age", value: $value, in: 0...100).foregroundColor(.blue)
        }.padding()
    }
}

struct ToggleSliderStepperView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSliderStepperView()
    }
}

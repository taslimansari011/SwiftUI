//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by macadmin on 05/05/21.
//

// Refer: Udemy
// Chapter 1: SwiftUI Framework
import SwiftUI

struct SwiftUIFramework: View {
    var body: some View {
// ------------------ 1: Text and modifiers ------------------
//        Text("Goodbye World is a multiline text that should be visible in multiple lines.")
//            .underline()
////            .font(.title)
////            .fontWeight(.bold)
//            .foregroundColor(.secondary)
//            .lineLimit(nil)
//            .multilineTextAlignment(.center)
//            .lineSpacing(10.0)
//            .padding(8)
//            .modifier(Title(size: 25)) // Custom modifier
        
// ------------------ 2: Colors ------------------
//        Color(red: 200/255.0, green: 120/255.0, blue: 210/255.0) // Static color. Will be same on light and dark mode.
//        Color.accentColor // Will change on light and dark mode.
//            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
//            .border(Color.black, width: 5)
//            .cornerRadius(10)
//            .overlay(
//                Text("Hello")
//                    .foregroundColor(.white)
//                    .fontWeight(.heavy)
//                    .font(.title),
//                alignment: .center
//            )
        
// ------------------ 3: Image ------------------
//        Image("1")
//            .resizable()
//            //            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .padding()
//            .shadow(color: .black, radius: 10, x: 5, y: 5)
//            .blur(radius: 3.0, opaque: false)
//            .colorMultiply(.orange)
//            .saturation(10.0)
//            .scaleEffect(0.7)
//            .onAppear {
//                print("Showing Image with modifiers applied")
//            }
        
// ------------------ 4: Stack, Spacer ------------------
//        ZStack {
//            Color.gray
//                .edgesIgnoringSafeArea(.all) //Ignores safe area layout and use full screen
//
//            VStack(alignment: .center, spacing: 10) {
//                Text("Hello World")
//                Text("Hello Delhi")
//
//                Spacer()
//
//                HStack {
//                    Image(systemName: "cloud")
//                        .font(Font.system(size: 50))
//
//                    VStack(alignment: .leading) {
//                        Text("12 C").font(.body)
//                        Text("New Delhi")
//                    }
//
//                    Spacer()
//                }
//            }.padding()
//        }
        
// ------------------ 5: Layout priorities ------------------
//        HStack(alignment: .myAlignment) {
//            Image(systemName: "cloud")
//                .font(Font.system(size: 50))
//
//            Text("This s a random text just to show priorities, This s a random text just to show priorities, This s a random text just to show priorities")
//                .font(.title)
//                .multilineTextAlignment(.leading)
////                .lineLimit(1)
////                .layoutPriority(1)
////                .fixedSize() // This view takes the minimum size that fits this view no matter what.
//
//            // Applies custom alignment to this view
//            VStack(alignment: .leading) {
//                Text("12 C").font(.body)
//                Text("New Delhi")
//            }.alignmentGuide(VerticalAlignment.center, computeValue: { dimension in
//                dimension[VerticalAlignment.center] + 100
//            })
//        }
//        .padding()
//        .border(Color.black)
//        .padding()
        
// ------------------ 6: Group ------------------
// Maximum view in a stack must be <= 10 So It will give error. We use group here.
//        let device = UIDevice.current.userInterfaceIdiom
//        return Group {
//            if device == .phone {
//                VStack(spacing: 10) {
//                    Group {
//                        Text("1")
//                        Text("2")
//                        Text("3")
//                        Text("4")
//                        Text("5")
//                    }
//                    .font(.title)
//                    .foregroundColor(.blue)
//
//                }
//            } else {
//                VStack {
//                    Group {
//                        Text("6")
//                        Text("7")
//                        Text("8")
//                        Text("9")
//                        Text("10")
//                        Text("11")
//                        Text("12")
//                        Text("13")
//                    }
//                    .font(.title3)
//                    .foregroundColor(.secondary)
//                }
//            }
//        }
//        .padding()
        
// ------------------ 6.1: AnyView ------------------
        getView()
    }
    
    func getView() -> AnyView {
        let device = UIDevice.current.userInterfaceIdiom
        if device == .phone {
            return AnyView(Text("This is an iPhone").font(.title))
        } else {
            return AnyView(Text("This is not an iPhone").font(.title))
        }
    }
}

// Custom Alignment
extension VerticalAlignment {
    enum MyAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.center] - 200
        }
    }
    
    static let myAlignment = VerticalAlignment(MyAlignment.self)
}

// Custom View Modifier
struct Title: ViewModifier {
    
    var size: CGFloat
    
    init(size: CGFloat) {
        self.size = size
    }
    
    func body(content: Content) -> some View {
        content
            .padding(10)
            .font(Font.system(size: size))
            .foregroundColor(.gray)
            .border(Color.black, width: 2)
            .cornerRadius(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFramework()
    }
}

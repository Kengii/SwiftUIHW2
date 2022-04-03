//
//  ContentView.swift
//  SwiftUIHW2
//
//  Created by Владимир Данилович on 3.04.22.
//

import SwiftUI

struct ContentView: View {

    @State var red = Double.random(in: 0...255)
    @State var green = Double.random(in: 0...255)
    @State var blue = Double.random(in: 0...255)
    
    @State var tap = false
    
    var body: some View {

        VStack(spacing: 30) {
            ViewRectangle(redColor: red, greenColor: green, bluedColor: blue)
                .padding(.top, 20)
            if tap == true {
            ViewRectangle(redColor: red, greenColor: green, bluedColor: blue)
            } else {
                ViewRectangle(redColor: 50, greenColor: 20, bluedColor: 40)
            }
        }
        VStack {
            SliderColor(value: $red, colorView: .red)
            SliderColor(value: $green, colorView: .green)
            SliderColor(value: $blue, colorView: .blue)
        }
        Spacer()
        Button("Done") {
            tap.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  SliderColor.swift
//  SwiftUIHW2
//
//  Created by Владимир Данилович on 3.04.22.
//

import SwiftUI

struct SliderColor: View {
    
    @Binding var value: Double
    @State private var text = ""
    
    let colorView: Color
    
    var body: some View {
        HStack{
        Slider(value: $value, in: 0...255, step: 1)
            .onChange(of: value) { newValue in
                text = String(lround(newValue))
            }
            TextFieldView(textValue: $text, value: $value)
                }
        .onAppear {
            text = "\(lround(value))"
        }
    }
}

struct SliderColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderColor(value: .constant(50), colorView: .blue)
    }
}

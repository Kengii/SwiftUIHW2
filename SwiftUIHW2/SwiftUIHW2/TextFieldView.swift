//
//  TextFieldView.swift
//  SwiftUIHW2
//
//  Created by Владимир Данилович on 3.04.22.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var alert = false
    
    var body: some View {
        TextField("50", text: $textValue) { _ in
            withAnimation {
                checkNewValue()
            }
        }
        .textFieldStyle(.roundedBorder)
        .alert("Wrong Format", isPresented: $alert, actions: {}) {
            Text("Please enter value from 0 to 255")
        }
    }
    
    private func checkNewValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        alert.toggle()
        value = 0
        textValue = "0"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("50"), value: .constant(50))
    }
}

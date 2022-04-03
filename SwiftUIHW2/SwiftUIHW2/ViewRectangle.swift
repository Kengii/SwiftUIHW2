//
//  ViewRectangle.swift
//  SwiftUIHW2
//
//  Created by Владимир Данилович on 3.04.22.
//

import SwiftUI

struct ViewRectangle: View {
    let redColor: Double
    let greenColor: Double
    let bluedColor: Double

    var body: some View {
        Color(red: redColor / 255,
            green: greenColor / 255,
            blue: bluedColor / 255)
            .frame(height: 170)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white, lineWidth: 4))
    }
}

struct ViewRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ViewRectangle(redColor: 120, greenColor: 30, bluedColor: 70)
    }
}

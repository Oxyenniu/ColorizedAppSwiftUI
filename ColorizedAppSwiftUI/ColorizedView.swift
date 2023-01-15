//
//  ColorizedView.swift
//  ColorizedAppSwiftUI
//
//  Created by Oxyenniu on 15.01.2023.
//

import SwiftUI

struct ColorizedView: View {
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        Color(red: redValue / 255,
              green: greenValue / 255,
              blue: blueValue / 255
        )
        .frame(width: 350, height: 200)
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .stroke(lineWidth: 4))
        
    }
}
//
//struct ColorizedView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorizedView(redValue: 0.5, greenValue: 0.5, blueValue: 0.5)
//    }
//}

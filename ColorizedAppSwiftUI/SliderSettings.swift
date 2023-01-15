//
//  SliderSettings.swift
//  ColorizedAppSwiftUI
//
//  Created by Oxyenniu on 15.01.2023.
//

import SwiftUI

struct SliderSettings: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").frame(width: 50)
            Slider(value: $value, in: 0...255, step: 1).accentColor(sliderColor)
        }
    }
}

//
//  TFView.swift
//  ColorizedAppSwiftUI
//
//  Created by Oxyenniu on 15.01.2023.
//

import SwiftUI

struct TFView: View {
    @Binding var sliderValue: Double
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View {
        TextField("", value: $sliderValue, formatter: formatter)
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
    }
}



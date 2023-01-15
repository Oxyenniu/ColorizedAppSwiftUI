//
//  TFView.swift
//  ColorizedAppSwiftUI
//
//  Created by Oxyenniu on 15.01.2023.
//

import SwiftUI

struct TFView: View {
    @Binding var sliderValue: Double
    @State private var showAlert = false
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    var body: some View {
        TextField("",
                  value: $sliderValue,
                  formatter: formatter,
                  onCommit: checkTextFildValue)
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
            .keyboardType(.decimalPad)
            .alert("Attantion", isPresented: $showAlert, actions: {}) {
                Text("Available value from 0 to 255")
        }
    }
}

extension TFView {
    private func checkTextFildValue() {
        if  sliderValue > 255 || sliderValue < 0 {
            showAlert.toggle()
            sliderValue = 128
            return
        }
        
    }
}

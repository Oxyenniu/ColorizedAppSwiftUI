//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Oxyenniu on 15.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 128.0
    @State private var greenSliderValue = 128.0
    @State private var blueSliderValue = 128.0
    
    let backgroundGradient = LinearGradient(
        gradient: Gradient(colors: [Color.red, Color.yellow, Color.blue]),
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            VStack(spacing: 30) {
                ColorizedView(
                    redValue: redSliderValue ,
                    greenValue: greenSliderValue,
                    blueValue: blueSliderValue
                )
                SliderSettingsView(value: $redSliderValue, sliderColor: .red)
                SliderSettingsView(value: $greenSliderValue, sliderColor: .green)
                SliderSettingsView(value: $blueSliderValue, sliderColor: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




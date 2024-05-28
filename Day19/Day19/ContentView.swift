//
//  ContentView.swift
//  Day19
//
//  Created by Manuel Cubillo on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var unitAmount = 0.0
    @State private var initialUnit = "Celsius"
    @State private var finalUnit = "Fahrenheit"
    
    var units = ["Celsius", "Fahrenheit", "Kelvin"]
    var convertedAmount: Double {
        var celsisus = 0.0
        var convertedAmount = 0.0
        
        switch initialUnit {
            case "Celsius":
                celsisus = unitAmount
            case "Fahrenheit":
                celsisus = (unitAmount - 32) * (5/9)
            case "Kelvin":
                celsisus = unitAmount - 273.15
            default:
                break
        }
        
        switch finalUnit {
            case "Celsius":
                convertedAmount = celsisus
            case "Fahrenheit":
                convertedAmount = (celsisus * 1.8) + 32
            case "Kelvin":
                convertedAmount = celsisus + 273.15
            default:
                break
        }
        
        return convertedAmount
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Unit Amount") {
                    TextField("Enter Amount", value: $unitAmount, format: .number)
                        .keyboardType(.decimalPad)
                }
                Section("Initial Unit") {
                    Picker("From Unit", selection: $initialUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Target Unit") {
                    Picker("To Unit", selection: $finalUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Conversion") {
                    Text(convertedAmount, format: .number)
                }
            }
            .navigationTitle("Temp Converter")
        }
    }
}

#Preview {
    ContentView()
}

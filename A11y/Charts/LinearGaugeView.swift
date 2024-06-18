//
//  LinearGaugeView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

struct LinearGaugeView: View {
    
    let title: String
    
    @State private var value1 = 0.4
    
    @State private var value2 = 0.2

    @State private var minValue = 0.0
    @State private var batteryMaxValue = 1.0
    
    private var percentFormatter: NumberFormatter {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        return numberFormatter
    }

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 32) {
                    VStack(spacing: 16) {
                        Text("linear_gauge_description")
                            .maxWidthLeading()
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        
                        DividerSpacerView()
                        
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        .gaugeStyle(.accessoryLinear)
                        
                        DividerSpacerView()
                        
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        .gaugeStyle(.accessoryLinearCapacity)
                        
                        DividerSpacerView()
                        
                        Text("custom_min_max_linear_gauge")
                            .maxWidthLeading()
                        Text("double_current_value")
                            .maxWidthLeading()
                            .font(.caption)
                        Gauge(value: value2, in: minValue...batteryMaxValue) {
                            Text("battery_level")
                        } currentValueLabel: {
                            // Hide the label otherwise it will announce twice in VoiceOver
                            Text(percentFormatter.string(from: value2 as NSNumber)!)
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Text(percentFormatter.string(from: minValue as NSNumber)!)
                        } maximumValueLabel: {
                            Text(percentFormatter.string(from: batteryMaxValue as NSNumber)!)
                        }
                        
                        Gauge(value: value2, in: minValue...batteryMaxValue) {
                            Text("battery_level")
                        } currentValueLabel: {
                            // Hide the label otherwise it will announce twice in VoiceOver
                            Text(percentFormatter.string(from: value2 as NSNumber)!)
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Image(systemName: "battery.0percent")
                        } maximumValueLabel: {
                            Image(systemName: "battery.100percent")
                        }
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    LinearGaugeView(title: "_Gague")
}

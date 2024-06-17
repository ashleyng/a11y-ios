//
//  GaugeView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

struct GaugeView: View {
    
    let title: String
    
    @State private var value1 = 0.4
    
    @State private var value2 = 22.0
    @State private var bpmValue = 80.0

    @State private var minValue = 0.0
    @State private var batteryMaxValue = 100.0
    @State private var bpmMaxValue = 200.0
    private let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 32) {
                    
                    Text("linear_gauge_description")
                        .headline()
                        .maxWidthLeading()
                    VStack(spacing: 16) {
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
                            .headline()
                            .maxWidthLeading()
                        Text("double_current_value")
                            .maxWidthLeading()
                            .font(.caption)
                        Gauge(value: value2, in: minValue...batteryMaxValue) {
                            Text("battery_level")
                        } currentValueLabel: {
                            Text(value2.formatted())
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                        } maximumValueLabel: {
                            Text(batteryMaxValue.formatted())
                        }
                        
                        Gauge(value: value2, in: minValue...batteryMaxValue) {
                            Text("battery_level")
                        } currentValueLabel: {
                            Text(value2.formatted())
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Image(systemName: "battery.0percent")
                        } maximumValueLabel: {
                            Image(systemName: "battery.100percent")
                        }
                    }
                    
                    VStack(spacing: 16) {
                        Text(String.localizedString(key: "coming_soon", arguments: String(localized: "circular_gauges")))
                            .headline()
                            .maxWidthLeading()
                        /* TODO: Need to look more into accessibility reading percentages
                        Text("circular_gauges_not_dynamic")
                            .font(.caption)
                            .maxWidthLeading()
                        
                        Gauge(value: bpmValue, in: minValue...bpmMaxValue) {
                            Text("BPM")
                                .accessibilityLabel("beats_per_minute")
                        } currentValueLabel: {
                            Text(bpmValue.formatted())
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                        } maximumValueLabel: {
                            Text(bpmMaxValue.formatted())
                        }
                        .gaugeStyle(.accessoryCircular)
                        
                        Divider()
                        
                        
                        Gauge(value: bpmValue, in: minValue...bpmMaxValue) {
                            Text("BPM")
                                .accessibilityLabel("beats_per_minute")
                        } currentValueLabel: {
                            Text(bpmValue.formatted())
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        
                        Divider()
                        
                        Gauge(value: bpmValue, in: minValue...bpmMaxValue) {
                            Image(systemName: "heart.fill")
                                .accessibilityLabel("beats_per_minute")
                                .foregroundColor(.red)
                        } currentValueLabel: {
                            Text(bpmValue.formatted())
                                .foregroundColor(Color.green)
                                .accessibilityHidden(true)
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                                .foregroundColor(Color.green)
                        } maximumValueLabel: {
                            Text(bpmMaxValue.formatted())
                                .foregroundColor(Color.red)
                        }
                        .gaugeStyle(.accessoryCircular)
                         */
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    GaugeView(title: "_Gague")
}

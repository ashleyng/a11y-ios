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
    @State private var value3 = 18.0

    @State private var minValue = 0.0
    @State private var maxValue = 100.0
    private let gradient = Gradient(colors: [.green, .yellow, .orange, .red])

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 32) {
                    
                    Text("linear_gauge_description")
                        .maxWidthLeading()
                    VStack(spacing: 16) {
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        
                        Divider()
                        
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        .gaugeStyle(.accessoryLinear)
                        
                        Divider()
                        
                        Gauge(value: value1) {
                            Text("battery_level")
                        }
                        .gaugeStyle(.accessoryLinearCapacity)
                        
                        Divider()
                        
                        Text("custom_min_max_linear_gauge")
                            .maxWidthLeading()
                        Gauge(value: value2, in: minValue...maxValue) {
                            Text("battery_level")
                        } currentValueLabel: {
                            Text(value2.formatted())
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                        } maximumValueLabel: {
                            Text(maxValue.formatted())
                        }
                    }
                    
                    VStack(spacing: 16) {
                        Text("circular_gauges_not_dynamic")
                            .maxWidthLeading()
                        
                        Gauge(value: value3, in: minValue...maxValue) {
                            Text("BPM")
                        } currentValueLabel: {
                            Text(value3.formatted())
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                        } maximumValueLabel: {
                            Text(maxValue.formatted())
                        }
                        .gaugeStyle(.accessoryCircular)
                        
                        Divider()
                        
                        
                        Gauge(value: value3, in: minValue...maxValue) {
                            Text("BPM")
                        } currentValueLabel: {
                            Text(value3.formatted())
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        
                        Divider()
                        
                        Gauge(value: value3, in: minValue...maxValue) {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                        } currentValueLabel: {
                            Text(value3.formatted())
                                .foregroundColor(Color.green)
                        } minimumValueLabel: {
                            Text(minValue.formatted())
                                .foregroundColor(Color.green)
                        } maximumValueLabel: {
                            Text(maxValue.formatted())
                                .foregroundColor(Color.red)
                        }
                        .gaugeStyle(.accessoryCircular)
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

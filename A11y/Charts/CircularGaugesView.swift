//
//  CircularGaugesView.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import SwiftUI

struct CircularGaugesView: View {
    let title: String
    
    @State private var minimumAngle = 91.0
    @State private var maximumAngle = 180.0
    
    @State private var value = 145.8
    
    private let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
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
                        Text("circular_gauges_not_dynamic")
                            .maxWidthLeading()
                        
                        Text("circular_gauges_voiceover_note")
                            .maxWidthLeading()
                        
                        Text("circular_gauges_example")
                            .maxWidthLeading()
                        
                        HStack {
                            Gauge(value: value, in: minimumAngle...maximumAngle) {
                                Text("obtuse_angle")
                            } currentValueLabel: {
                                Text(value.formatted())
                                    .accessibilityHidden(true)
                            } minimumValueLabel: {
                                Text(minimumAngle.formatted())
                            } maximumValueLabel: {
                                Text(maximumAngle.formatted())
                            }
                            .gaugeStyle(.accessoryCircular)
                            
                            Gauge(value: value, in: minimumAngle...maximumAngle) {
                                Text("obtuse_angle")
                            } currentValueLabel: {
                                Text(value.formatted())
                            }
                            .gaugeStyle(.accessoryCircularCapacity)
                            
                            Gauge(value: value, in: minimumAngle...maximumAngle) {
                                Image(systemName: "angle")
                                    .accessibilityLabel("obtuse_angle")
                                    .foregroundColor(.red)
                            } currentValueLabel: {
                                Text(value.formatted())
                                    .foregroundColor(Color.green)
                                    .accessibilityHidden(true)
                            } minimumValueLabel: {
                                Text(minimumAngle.formatted())
                                    .foregroundColor(Color.green)
                            } maximumValueLabel: {
                                Text(maximumAngle.formatted())
                                    .foregroundColor(Color.red)
                            }
                            .gaugeStyle(.accessoryCircular)
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
    CircularGaugesView(title: "_Circular Gauge view")
}

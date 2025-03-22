//
//  ScatterChartView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/25.
//


import SwiftUI
import Charts

struct ScatterChartView: View {
    
    private let title: String
    
    @State private var dataSet: [PollenCount] = []
    @State private var enableSymbols = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("simple_scatter_plot_description")
                Toggle(isOn: $enableSymbols, label: {
                    Text("enable_symbols")
                })
                Chart(dataSet) { pollenCount in
                    if enableSymbols {
                        PointMark(
                            x: .value("day", pollenCount.date!, unit: .day),
                            y: .value("pollen_index", pollenCount.pollenIndex)
                        )
                        .foregroundStyle(by: .value("location", pollenCount.location))
                        .symbol(by: .value("location", pollenCount.location))
                    } else {
                        PointMark(
                            x: .value("day", pollenCount.date!, unit: .day),
                            y: .value("pollen_index", pollenCount.pollenIndex)
                        )
                        .foregroundStyle(by: .value("location", pollenCount.location))
                    }
                }
            }
            .padding(16)
        }
        .navigationTitle(title)
        .onAppear {
            dataSet = ParseJsonService.parsePollenCount()
        }
    }
    
    init(title: String) {
        self.title = title
    }
}

#Preview {
    ScatterChartView(title: "Scatter Chart")
}

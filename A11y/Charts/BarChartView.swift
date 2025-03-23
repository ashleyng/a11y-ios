//
//  BarChartView.swift
//  A11y
//
//  Created by Ashley Ng on 3/21/25.
//

import SwiftUI
import Charts

struct BarChartView: View {
    
    private let title: String
    
    @State private var dataSet: [StockUnit] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("simple_bar_chart_description")
                Chart(dataSet, id: \.id) {
                    BarMark(
                        x: .value("date", $0.date!),
                        y: .value("sales", $0.units),
                        width: .automatic
                    )
                }
            }
            .padding(16)
        }
        .navigationTitle(title)
        .onAppear {
            dataSet = ParseJsonService.parseAppleStock()
        }
    }
    
    init(title: String) {
        self.title = title
    }
}

#Preview {
    BarChartView(title: "Bar chart")
}

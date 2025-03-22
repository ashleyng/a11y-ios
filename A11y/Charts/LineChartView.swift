//
//  LineChartView.swift
//  A11y
//
//  Created by Ashley Ng on 3/21/25.
//

import SwiftUI
import Charts

struct LineChartView: View {
    
    private let title: String
    
    @State private var dataSet: [StockUnit] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Text("simple_line_chart_description")
                Chart(dataSet, id: \.id) {
                    LineMark(
                        x: .value("date", $0.date!),
                        y: .value("price", $0.highPrice)
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
    LineChartView(title: "Line Chart")
}

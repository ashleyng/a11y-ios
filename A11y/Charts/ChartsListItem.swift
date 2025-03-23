//
//  ChartListItem.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

enum ChartListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case simpleLineChart
    case simpleBarChart
    case simpleScatterChart
    case linearGauges
    case circularGauges
    
    static var navTitleString: String {
        String(localized: "charts")
    }
    
    var itemTitleString: String {
        switch self {
        case .linearGauges:
            return String(localized: "gauges")
        case .circularGauges:
            return String(localized: "circular_gauges")
        case .simpleLineChart:
            return String(localized: "simple_line_chart")
        case .simpleBarChart:
            return String(localized: "simple_bar_chart")
        case .simpleScatterChart:
            return String(localized: "simple_scatter_chart")
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .linearGauges:
           LinearGaugeView(title: itemTitleString)
                .toAnyView()
        case .circularGauges:
            CircularGaugesView(title: itemTitleString)
                .toAnyView()
        case .simpleBarChart:
            LineChartView(title: itemTitleString)
                .toAnyView()
        case .simpleLineChart:
            BarChartView(title: itemTitleString)
                .toAnyView()
        case .simpleScatterChart:
            ScatterChartView(title: itemTitleString)
                .toAnyView()
        }
    }
}

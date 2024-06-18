//
//  ChartListItem.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

enum ChartListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case charts
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
        case .charts:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "charts"))
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
        case .charts:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

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
    case gauges
    
    static var navTitleString: String {
        String(localized: "charts")
    }
    
    var itemTitleString: String {
        switch self {
        case .gauges:
            return String(localized: "gauges")
        case .charts:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "charts"))
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .gauges:
           GaugeView(title: itemTitleString)
                .toAnyView()
        case .charts:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

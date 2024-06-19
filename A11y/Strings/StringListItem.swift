//
//  StringListItem.swift
//  A11y
//
//  Created by Ashley Ng on 6/18/24.
//

import SwiftUI

enum StringListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case unitAbbreviations
    case dates
    
    static var navTitleString: String {
        String(localized: "strings")
    }
    
    var itemTitleString: String {
        switch self {
        case .unitAbbreviations:
            return String(localized: "unit_abbreviations")
        case .dates:
            return String(localized: "dates_and_time")
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .unitAbbreviations:
            UnitStringView(title: itemTitleString)
                .toAnyView()
        case .dates:
            DatesTimeStringView(title: itemTitleString)
                .toAnyView()
        }
    }
}

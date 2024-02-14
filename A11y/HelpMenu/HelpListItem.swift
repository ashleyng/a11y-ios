//
//  HelpListItem.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import Foundation
import SwiftUI

enum HelpListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case what
    case terminology
    case shortcuts
    
    static var navTitleString: String {
        String(localized: "help")
    }
    
    var itemTitleString: String {
        switch self {
        case .what:
            return String(localized: "what_is_this")
        case .terminology:
            return String(localized: "terminology")
        case .shortcuts:
            return String(localized: "accessibility_shortcuts")
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .what:
            EmptyView()
        case .terminology:
            EmptyView()
        case .shortcuts:
            EmptyView()
        }
    }
}

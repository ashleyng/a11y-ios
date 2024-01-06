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
        "Help"
    }
    
    var itemTitleString: String {
        switch self {
        case .what:
            return "What is this?"
        case .terminology:
            return "Terminology"
        case .shortcuts:
            return "Accessibility shortcuts"
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

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
    case shortcuts
    
    static var navTitleString: String {
        String(localized: "about")
    }
    
    var itemTitleString: String {
        switch self {
        case .what:
            return String(localized: "about_app")
        case .shortcuts:
            return String(localized: "about_settings_and_shortcuts")
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .what:
            WhatIsThisView(title: itemTitleString)
                .toAnyView()
        case .shortcuts:
            ShortcutsView(title: String(localized: "settings_and_shortcuts"))
                .toAnyView()
        }
    }
}

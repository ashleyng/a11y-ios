//
//  MainListItem.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import Foundation
import SwiftUI

protocol ListItemNavigation {
    associatedtype T: View
    var navigationLinkView: T { get }
    static var navTitleString: String { get }
    var itemTitleString: String { get }
}

enum MainListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case list
    case components
    case strings
    
    static var navTitleString: String {
        String(localized: "home")
    }
    
    var itemTitleString: String {
        switch self {
        case .list:
            return String(localized: "lists")
        case .components:
            return String(localized: "components")
        case .strings:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "strings"))
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .list:
            BasicNavigationList(itemList: ListItem.allCases)
                .toAnyView()
        case .components:
            BasicNavigationList(itemList: ComponentItem.allCases)
                .toAnyView()
        case .strings:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

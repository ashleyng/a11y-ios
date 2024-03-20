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
    var itemDescription: String? { get }
}

enum MainListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case list
    case components
    case strings
    case rotor
    
    static var navTitleString: String {
        String(localized: "home")
    }
    
    var itemTitleString: String {
        switch self {
        case .list:
            return String(localized: "lists")
        case .components:
            return String(localized: "components")
        case .rotor:
            return String(localized: "rotor")
        case .strings:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "strings"))
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .list:
            BasicNavigationList(itemList: ListItem.allCases)
                .toAnyView()
        case .components:
            BasicNavigationList(itemList: ComponentItem.allCases)
                .toAnyView()
        case .rotor:
            BasicNavigationList(itemList: RotorListItem.allCases)
                .toAnyView()
        case .strings:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

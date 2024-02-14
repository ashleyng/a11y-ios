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
            return String(localized: "strings")
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .list:
            AnyView(BasicNavigationList(itemList: ListItem.allCases))
        case .components:
            AnyView(BasicNavigationList(itemList: ComponentItem.allCases))
        case .strings:
            AnyView(EmptyView())
        }
    }
}

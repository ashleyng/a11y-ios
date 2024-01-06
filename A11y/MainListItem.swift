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
    case devItems
    
    static var navTitleString: String {
        "Home"
    }
    
    var itemTitleString: String {
        switch self {
        case .list:
            return "Lists"
        case .components:
            return "Components"
        case .strings:
            return "Strings"
        case .devItems:
            return "Dev Items"
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .list:
            BasicNavigationList(itemList: ListItem.allCases)
        case .components:
            BasicNavigationList(itemList: ListItem.allCases)
        case .strings:
            BasicNavigationList(itemList: ListItem.allCases)
        case .devItems:
            BasicNavigationList(itemList: ListItem.allCases)
        }
    }
}

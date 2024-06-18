//
//  RotorListItem.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

enum RotorListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case headings
    case buttons
    case images
    case links
    
    static var descriptionHeaderString = String(localized: "rotor_best_use_case")
    
    static var navTitleString: String {
        String(localized: "components")
    }
    
    var itemTitleString: String {
        switch self {
        case .headings:
            return String(localized: "headings")
        case .buttons:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "buttons"))
        case .images:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "images"))
        case .links:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "links"))
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .headings:
           RotorHeadings(title: itemTitleString)
                .toAnyView()
        case .buttons:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .images:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .links:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

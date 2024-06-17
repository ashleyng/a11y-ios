//
//  ListItem.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import Foundation
import SwiftUI

enum ListItem: CaseIterable, Identifiable, ListItemNavigation, Comparable {
    var id : String { UUID().uuidString }
    
    case reorderable
    case carousel
    case collectionView
    case tables
    
    static var navTitleString: String {
        String(localized: "lists")
    }
    
    var itemTitleString: String {
        switch self {
        case .reorderable:
            return String(localized: "reorderable")
        case .carousel:
            if #available(iOS 17.0, *) {
                return String(localized: "carousel")
            } else {
                return String(localized: "native_carousel")
            }
        case .collectionView:
            return String(localized: "collection_view")
        case .tables:
            return String(localized: "tables")
        }
    }
    
    var itemDescription: String? {
        return nil
    }

    var navigationLinkView: some View {
        switch self {
        case .reorderable:
            ReorderableList(title: itemTitleString)
                .toAnyView()
        case .carousel:
            if #available(iOS 17.0, *) {
                CarouselList(title: itemTitleString)
                    .toAnyView()
            } else {
                SimpleTextView(label: String(localized: "native_carousel"))
                    .toAnyView()
            }
        case .collectionView:
            CollectionViewList(title: itemTitleString)
                .toAnyView()
        case .tables:
            TablesView(title: itemTitleString)
                .toAnyView()
        }
    }
}

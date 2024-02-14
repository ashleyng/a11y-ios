//
//  ListItem.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import Foundation
import SwiftUI

enum ListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case reorderable
    case carousel
    case collectionView
    
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
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .reorderable:
            AnyView(ReorderableList(title: itemTitleString))
        case .carousel:
            if #available(iOS 17.0, *) {
                AnyView(CarouselList(title: itemTitleString))
            } else {
                AnyView(EmptyView())
            }
        case .collectionView:
            AnyView(CollectionViewList(title: itemTitleString))
        }
    }
}

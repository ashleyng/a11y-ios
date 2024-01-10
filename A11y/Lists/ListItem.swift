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
        "Lists"
    }
    
    var itemTitleString: String {
        switch self {
        case .reorderable:
            return "Reorderable"
        case .carousel:
            if #available(iOS 17.0, *) {
                return "Carousel"
            } else {
                return "Native Carousel iOS 17+ only"
            }
        case .collectionView:
            return "Collection View"
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

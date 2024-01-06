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
    
    static var navTitleString: String {
        "Lists"
    }
    
    var itemTitleString: String {
        switch self {
        case .reorderable:
            return "Reorderable"
        case .carousel:
            return "Carousel"
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .reorderable:
            EmptyView()
        case .carousel:
            EmptyView()
        }
    }
}

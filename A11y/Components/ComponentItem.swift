//
//  ComponentItem.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import Foundation
import SwiftUI

enum ComponentItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case text
    case image
    case button
    case slider
    case toggle
    case picker
    case progress
    
    static var navTitleString: String {
        String(localized: "components")
    }
    
    var itemTitleString: String {
        switch self {
        case .text:
            return String(localized: "text")
        case .image:
            return String(localized: "image")
        case .button:
            return String(localized: "button")
        case .slider:
            return String(localized: "slider")
        case .toggle:
            return String(localized: "toggle")
        case .picker:
            return String(localized: "picker")
        case .progress:
            return String(localized: "progress")
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .text:
            EmptyView()
        case .image:
            EmptyView()
        case .button:
            EmptyView()
        case .slider:
            EmptyView()
        case .toggle:
            EmptyView()
        case .picker:
            EmptyView()
        case .progress:
            EmptyView()
        }
    }
}

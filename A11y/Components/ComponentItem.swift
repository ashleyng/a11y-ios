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
        "Components"
    }
    
    var itemTitleString: String {
        switch self {
        case .text:
            return "Text"
        case .image:
            return "Image"
        case .button:
            return "Button"
        case .slider:
            return "Slider"
        case .toggle:
            return "Toggle"
        case .picker:
            return "Picker"
        case .progress:
            return "Progress"
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

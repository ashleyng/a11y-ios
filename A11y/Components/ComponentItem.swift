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
            return String.localizedString(key: "coming_soon", arguments: String(localized: "text"))
        case .image:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "image"))
        case .button:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "button"))
        case .slider:
            return String(localized: "slider")
        case .toggle:
            return String(localized: "toggle")
        case .picker:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "picker"))
        case .progress:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "progress"))
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .text:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .image:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .button:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .slider:
            SliderA11y(title: itemTitleString)
                .toAnyView()
        case .toggle:
            ToggleA11y(title: itemTitleString)
                .toAnyView()
        case .picker:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .progress:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

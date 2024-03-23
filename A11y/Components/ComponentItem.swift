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
    case stepper
    
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
            return String(localized: "picker")
        case .progress:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "progress"))
        case .stepper:
            return String(localized: "stepper")
        }
    }
    
    var itemDescription: String? {
        return nil
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
            BasicNavigationList(itemList: PickerListItem.allCases)
                .toAnyView()
        case .progress:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .stepper:
            StepperView(title: itemTitleString)
                .toAnyView()
        }
    }
}

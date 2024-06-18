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
    
    case textInput
    case textInputForm
    case button
    case slider
    case toggle
    case picker
//    case progress // TODO: Think through notification announcements
    case stepper
    
    static var navTitleString: String {
        String(localized: "components")
    }
    
    var itemTitleString: String {
        switch self {
        case .textInput:
            return String(localized: "text_inputs")
        case .textInputForm:
            return String(localized: "text_input_forms")
        case .button:
            return String(localized: "button")
        case .slider:
            return String(localized: "slider")
        case .toggle:
            return String(localized: "toggle")
        case .picker:
            return String(localized: "pickers")
//        case .progress:
//            return String.localizedString(key: "coming_soon", arguments: String(localized: "progress"))
        case .stepper:
            return String(localized: "stepper")
        }
    }
    
    var itemDescription: String? {
        return nil
    }
    
    var navigationLinkView: some View {
        switch self {
        case .textInput:
            TextInputView(title: itemTitleString)
                .toAnyView()
        case .textInputForm:
            TextInputFormView(title: itemTitleString)
                .toAnyView()
        case .button:
            ButtonView(title: itemTitleString)
                .toAnyView()
        case .slider:
            SliderA11y(title: itemTitleString)
                .toAnyView()
        case .toggle:
            ToggleA11y(title: itemTitleString)
                .toAnyView()
        case .picker:
            BasicNavigationList(itemList: PickerListItem.allCases.sorted())
                .toAnyView()
//        case .progress:
//            SimpleTextView.notImplemented()
//                .toAnyView()
        case .stepper:
            StepperView(title: itemTitleString)
                .toAnyView()
        }
    }
}

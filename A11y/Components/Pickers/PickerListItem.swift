//
//  PickerListItem.swift
//  A11y
//
//  Created by Ashley Ng on 3/19/24.
//

import SwiftUI

enum PickerListItem: CaseIterable, Identifiable, ListItemNavigation {
    var id : String { UUID().uuidString }
    
    case menuSegmentedPicker
    case datePicker
    case multidatePicker
    case colorPicker
    
    static var navTitleString: String {
        String(localized: "pickers")
    }
    
    var itemTitleString: String {
        switch self {
        case .menuSegmentedPicker:
            return String(localized: "basic_pickers")
        case .datePicker:
            return String(localized: "date_picker")
        case .multidatePicker:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "multidate_picker"))
        case .colorPicker:
            return String.localizedString(key: "coming_soon", arguments: String(localized: "color_picker"))
        }
    }
    
    var itemDescription: String? {
        switch self {
        case .menuSegmentedPicker:
            return String(localized: "menu_segmented_picker")
        case .datePicker:
            return nil
        case .multidatePicker:
            return nil
        case .colorPicker:
            return nil
        }
    }
    
    var navigationLinkView: some View {
        switch self {
        case .menuSegmentedPicker:
            MenuPicker(title: itemTitleString)
                .toAnyView()
        case .datePicker:
            DatePickerView(title: itemTitleString)
                .toAnyView()
        case .multidatePicker:
            SimpleTextView.notImplemented()
                .toAnyView()
        case .colorPicker:
            SimpleTextView.notImplemented()
                .toAnyView()
        }
    }
}

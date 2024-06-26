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
    case listRowPicker
    
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
            return String(localized: "multidate_picker")
        case .colorPicker:
            return String(localized: "color_picker")
        case .listRowPicker:
            return String(localized: "list_row_picker")
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
        case .listRowPicker:
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
            MultiDatePickerView(title: itemTitleString)
                .toAnyView()
        case .colorPicker:
            ColorPickerView(title: itemTitleString)
                .toAnyView()
        case .listRowPicker:
            ListRowPickerView(title: itemTitleString)
                .toAnyView()
        }
    }
}

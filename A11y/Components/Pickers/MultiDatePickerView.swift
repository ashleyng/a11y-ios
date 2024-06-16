//
//  MultiDatePickerView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI


struct MultiDatePickerView: View {
    
    let title: String
    
    @State private var dates1: Set<DateComponents> = []
    @State private var dates2: Set<DateComponents> = []

    
    var dateRange: Range<Date>? {
        let calendar = Calendar.current
        let now = Date()
        
        let start = Calendar.current.date(byAdding: .year, value: -2, to: now) ?? Date()
        let startComponents = calendar.dateComponents([.year, .month, .day], from: start)
        
        let end = Calendar.current.date(byAdding: .year, value: 2, to: now) ?? Date()
        let endComponents = calendar.dateComponents([.year, .month, .day], from: end)
        
        let startDate = DateComponents(year: startComponents.year, month: startComponents.month, day: startComponents.day)
        let endDate = DateComponents(year: endComponents.year, month: endComponents.month, day: endComponents.day)
        guard let start = calendar.date(from:startDate), let end = calendar.date(from:endDate) else { return nil }
        return start ..< end
    }

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if let dateRange = dateRange {
                        Text("unbound_date_picker")
                            .maxWidthLeading()
                        MultiDatePicker("dates_available", selection: $dates1)
                        
                        Divider()
                        
                        Text(String.localizedString(key: "bound_date_picker", arguments: dateRange.formatted()))
                            .maxWidthLeading()
                        MultiDatePicker("dates_available", selection: $dates2, in: dateRange)
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    MultiDatePickerView(title: "_MultiDatePickerView")
}


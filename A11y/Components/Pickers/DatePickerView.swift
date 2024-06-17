//
//  DatePickerView.swift
//  A11y
//
//  Created by Ashley Ng on 3/19/24.
//

import SwiftUI

struct DatePickerView: View {
    
    let title: String
    
    @State private var date1 = Date()
    @State private var date2 = Date()
    @State private var date3 = Date()
    @State private var date4 = Date()
    @State private var date5 = Date()
    
    var dateRange: ClosedRange<Date>? {
        let calendar = Calendar.current
        let now = Date()
        
        let start = Calendar.current.date(byAdding: .year, value: -2, to: now) ?? Date()
        let startComponents = calendar.dateComponents([.year, .month, .day], from: start)
        
        let end = Calendar.current.date(byAdding: .year, value: 2, to: now) ?? Date()
        let endComponents = calendar.dateComponents([.year, .month, .day], from: end)
        
        let startDate = DateComponents(year: startComponents.year, month: startComponents.month, day: startComponents.day)
        let endDate = DateComponents(year: endComponents.year, month: endComponents.month, day: endComponents.day)
        guard let start = calendar.date(from:startDate), let end = calendar.date(from:endDate) else { return nil }
        return start...end
    }

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if let dateRange = dateRange {
                        VStack {
                            Text("date_picker_larger_fonts")
                            DividerSpacerView()
                            DatePicker(
                                "start_date_time",
                                selection: $date1,
                                in: dateRange,
                                displayedComponents: [.date, .hourAndMinute]
                            )
                            DividerSpacerView()
                            DatePicker(
                                "start_time",
                                selection: $date2,
                                in: dateRange,
                                displayedComponents: [.hourAndMinute]
                            )
                            DividerSpacerView()
                            DatePicker(
                                "start_date",
                                selection: $date3,
                                in: dateRange,
                                displayedComponents: [.date]
                            )
                        }
                        
                        DatePicker(
                            "start_date",
                            selection: $date4,
                            in: dateRange,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.graphical)
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    DatePickerView(title: "_DatePickerView")
}

//
//  DatesTimeStringView.swift
//  A11y
//
//  Created by Ashley Ng on 6/18/24.
//

import SwiftUI

struct DatesTimeStringView: View {
    let title: String
    
    @State private var today = Date()
    
    var body: some View {
        List {
            Text("date_time_string_description")
            HStack {
                Text("abbreviated")
                Text(today.formatted(date: .abbreviated, time: .omitted))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("numeric")
                Text(today.formatted(date: .numeric, time: .omitted))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("complete")
                Text(today.formatted(date: .omitted, time: .complete))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("standard")
                Text(today.formatted(date: .omitted, time: .standard))
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
        }
        .navigationTitle(title)
    }
}

#Preview {
    DatesTimeStringView(title: "_dates")
}

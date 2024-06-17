//
//  ListRowPickerView.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import SwiftUI

struct ListRowPickerView: View {
    let title: String
    
    @State private var selected: PizzaToppings = .cheese
    
    var body: some View {
        NavigationStack {
            List {
                Text("list_row_style_picker")
                
                Picker("pizza_toppings", selection: $selected) {
                    ForEach(PizzaToppings.smallerList) { topping in
                        Text(String(localized: topping.stringKey)).tag(topping)
                    }
                }
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    ListRowPickerView(title: "_List row picker")
}

//
//  MenuPicker.swift
//  A11y
//
//  Created by Ashley Ng on 3/19/24.
//

import SwiftUI

struct MenuPicker: View {
    
    let title: String

    @State private var selected1: PizzaToppings = .cheese
    @State private var selected2: PizzaToppings = .cheese
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Text("dropdown_picker")
                        .maxWidthLeading()
                        .title()
                    Picker("pizza_toppings", selection: $selected1) {
                        ForEach(PizzaToppings.allCases) { toppings in
                            Text(String(localized: toppings.stringKey))
                        }
                    }
                    
                    DividerSpacerView()
                    
                    Text("segmented_picker")
                        .maxWidthLeading()
                        .title()
                    Text("segemented_tap_and_hold")
                        .maxWidthLeading()
                    VStack {
                        Picker("pizza_toppings", selection: $selected2) {
                            ForEach(PizzaToppings.smallerList) { topping in
                                Text(String(localized: topping.stringKey))
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    MenuPicker(title: "_Menu Picker")
}

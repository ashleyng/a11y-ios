//
//  MenuPicker.swift
//  A11y
//
//  Created by Ashley Ng on 3/19/24.
//

import SwiftUI

struct MenuPicker: View {
    
    let title: String
    
    enum PizzaToppings: String, CaseIterable, Identifiable {
        case cheese, pepperoni, mushrooms, peppers, olives, pineapple
        
        var id: Self { self }
        
        var stringKey: String.LocalizationValue {
            switch self {
            case .cheese:
                "cheese"
            case .pepperoni:
                "pepperoni"
            case .mushrooms:
                "mushrooms"
            case .peppers:
                "peppers"
            case .olives:
                "olives"
            case .pineapple:
                "pineapple"
            }
        }
        
        static var smallerList: [PizzaToppings] = [.cheese, .peppers, .pineapple]
    }


    @State private var selected1: PizzaToppings = .cheese
    @State private var selected2: PizzaToppings = .cheese

    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Picker("pizza_toppings", selection: $selected1) {
                        ForEach(PizzaToppings.allCases) { toppings in
                            Text(String(localized: toppings.stringKey))
                        }
                    }
                    
                    VStack {
                        Picker("pizza_toppings", selection: $selected2) {
                            ForEach(PizzaToppings.smallerList) { topping in
                                Text(String(localized: topping.stringKey))
                            }
                        }
                        .pickerStyle(.segmented)
                        Text("segemented_tap_and_hold")
                            .maxWidthLeading()
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

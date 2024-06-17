//
//  PizzaToppings.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import Foundation

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

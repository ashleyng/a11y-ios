//
//  TablesView.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import SwiftUI

struct PizzaRatings: Identifiable {
    let id = UUID()
    let topping: PizzaToppings
    let numVotes: Int
    let rating: Double
    
    var toppingName: String {
        String(localized: topping.stringKey)
    }
    
    var stringNumVotes: String {
        "\(numVotes)"
    }
    
    var ratingPercent: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        return formatter.string(from: rating as NSNumber) ?? "--"
    }
}


struct TablesView: View {
    
    let title: String
    
    @State private var pizzaRatings: [PizzaRatings] = [
        PizzaRatings(topping: .cheese, numVotes: 132, rating: 0.982),
        PizzaRatings(topping: .olives, numVotes: 78, rating: 0.429),
        PizzaRatings(topping: .pepperoni, numVotes: 178, rating: 0.903),
        PizzaRatings(topping: .mushrooms, numVotes: 89, rating: 0.735),
        PizzaRatings(topping: .pineapple, numVotes: 104, rating: 0.463)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("tables_ipad_only")
                    .maxWidthLeading()
                Table(pizzaRatings) {
                    TableColumn("topping", value: \.toppingName)
                    TableColumn("num_votes", value: \.stringNumVotes)
                    TableColumn("rating", value: \.ratingPercent)
                }
            }
            .padding(16)
        }
        .navigationTitle(title)
    }
}

#Preview {
    TablesView(title: "_Table view")
}

//
//  TableSelectionView.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import SwiftUI

struct TableSelectionView: View {
    
    let title: String
    
    @State private var selectedRating = Set<PizzaRatings.ID>()
    
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
                Text("table_selection_description")
                    .maxWidthLeading()
                Table(pizzaRatings, selection: $selectedRating) {
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
    TableSelectionView(title: "_Table selection")
}

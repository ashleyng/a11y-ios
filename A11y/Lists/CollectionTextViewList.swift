//
//  CollectionTextViewList.swift
//  A11y
//
//  Created by Ashley Ng on 3/21/25.
//

import SwiftUI

struct CollectionTextViewList: View {
    
    let title: String
    
    private let columns = [GridItem(.adaptive(minimum: 80))]
    
    @State private var imageNameString = [
        "Lorem", "ipsum", "dolor", "sit", "amet,", "consectetur", "adipiscing", "elit.",
        "Vivamus", "blandit", "tortor", "eget", "sodales", "mollis.", "Cras", "urna", "lacus,",
        "accumsan", "eget", "sagittis", "vitae,", "cursus", "a", "leo.", "Pellentesque",
        "molestie", "mattis", "leo", "id", "gravida.", "Curabitur", "suscipit", "posuere",
        "nisi", "vitae", "mollis.", "Integer", "sit", "amet", "orci", "vel", "lacus",
        "suscipit", "mattis.", "Morbi", "turpis", "sem,", "vulputate", "vitae", "nibh"
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("built_in_reordering")
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(imageNameString, id: \.self) { value in
                        Text(value)
                    }
                }
            }
            .padding(16)
        }
        .navigationTitle(title)
    }
}

#Preview {
    CollectionTextViewList(title: "CollectionView")
}

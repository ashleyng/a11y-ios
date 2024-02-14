//
//  ReorderableList.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct ReorderableList: View {
    
    let title: String
    
    @State private var loremIpsum = [
        String(localized: "delete_reorder_edit_mode"),
        String(localized: "tap_and_hold"),
        String(localized: "swipe_to_delete"),
        String(localized: "reorder_action"),
        String(localized: "delete_announce"),
        "Lorem", "ipsum", "dolor", "sit", "amet,", "consectetur", "adipiscing", "elit.", "Nunc", "sit."
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(loremIpsum, id: \.self) { lorem in
                    Text(lorem)
                }
                .onMove(perform: move)
                .onDelete(perform: delete)
            }
            .toolbar {
                EditButton()
            }
        }
        .navigationTitle(title)
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        loremIpsum.move(fromOffsets: source, toOffset: destination)
    }
    
    private func delete(from indexSet: IndexSet) {
        loremIpsum.remove(atOffsets: indexSet)
    }
    
}

#Preview {
    ReorderableList(title: "Reorderable List")
}

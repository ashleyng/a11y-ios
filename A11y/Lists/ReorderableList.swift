//
//  ReorderableList.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct ReorderableList: View {
    
    @State private var loremIpsum = [
        "You can delete and reorder while not in edit mode",
        "Reorder actions will not be announced unles you tap the edit button",
        "Delete action will not be announced at all", 
        "Lorem", "ipsum", "dolor", "sit", "amet,", "consectetur", "adipiscing", "elit.", "Nunc", "sit."
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(loremIpsum, id: \.self) { lorem in
                        Text(lorem)
                    }
                    .onMove(perform: move)
                    .onDelete(perform: delete)
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    private func move(from source: IndexSet, to destination: Int) {
        loremIpsum.move(fromOffsets: source, toOffset: destination)
    }
    
    private func delete(from indexSet: IndexSet) {
        loremIpsum.remove(atOffsets: indexSet)
    }
    
}

#Preview {
    ReorderableList()
}

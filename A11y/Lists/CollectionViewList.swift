//
//  CollectionViewList.swift
//  A11y
//
//  Created by Ashley Ng on 1/9/24.
//

import SwiftUI

struct CollectionViewList: View {
    
    let title: String
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @State private var imageNameString = [
        "pencil", "eraser", "pencil.tip", "trash", "folder", "paperplane",
        "book", "backpack", "paperclip", "link",  "trophy", "graduationcap",
        "dumbbell", "umbrella", "speaker", "flag", "bell", "camera", "scissors",
        "screwdriver", "printer"
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("built_in_reordering")
                LazyVGrid(columns: columns) {
                    ForEach(imageNameString, id: \.self) { value in
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.blue)
                                .frame(height: 100)
                            Image(systemName: value)
                                .foregroundColor(.white)
                        }
                        .accessibilityElement(children: .combine)
                    }
                }
            }
            .padding(16)
        }
        .navigationTitle(title)
    }
}

#Preview {
    CollectionViewList(title: "CollectionView")
}

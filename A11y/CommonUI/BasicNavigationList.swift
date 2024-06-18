//
//  BasicNavigationList.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct BasicNavigationList<T: ListItemNavigation>: View where T: Identifiable {
    
    let descriptionHeaderText: String?
    
    let itemList: [T]
    
    init(itemList: [T], descriptionHeaderText: String? = nil) {
        self.itemList = itemList
        self.descriptionHeaderText = descriptionHeaderText
    }
    
    var body: some View {
        VStack {
            if let descriptionHeaderText = descriptionHeaderText {
                Text(descriptionHeaderText)
                    .padding(.horizontal, 8)
            }
            List {
                ForEach(itemList) { item in
                    NavigationLink {
                        item.navigationLinkView
                    } label: {
                        VStack {
                            Text(item.itemTitleString)
                                .maxWidthLeading()
                            if let description = item.itemDescription {
                                Text(description)
                                    .maxWidthLeading()
                                    .font(.caption)
                            }
                        }
                    }
                    
                }
            }
        }
        .navigationTitle(T.navTitleString)
    }
}

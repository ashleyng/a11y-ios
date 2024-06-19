//
//  ItemNavigationRow.swift
//  A11y
//
//  Created by Ashley Ng on 6/18/24.
//

import SwiftUI

protocol ListItemNavigation: Comparable {
    associatedtype T: View
    var navigationLinkView: T { get }
    static var navTitleString: String { get }
    var itemTitleString: String { get }
    var itemDescription: String? { get }
}

struct ItemNavigationRow<T: ListItemNavigation>: View {
    
    let item: T
    
    var body: some View {
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

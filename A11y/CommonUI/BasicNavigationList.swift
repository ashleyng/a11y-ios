//
//  BasicNavigationList.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct BasicNavigationList<T: ListItemNavigation>: View where T: Identifiable {
    
    let itemList: [T]
    
    var body: some View {
        List {
            ForEach(itemList) { item in
                NavigationLink {
                    item.navigationLinkView
                } label: {
                    Text(item.itemTitleString)
                }
                
            }
        }
        .navigationTitle(T.navTitleString)
    }
}

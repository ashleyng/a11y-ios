//
//  MainListView.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct MainListView: View {
    
    @State private var columnVisibility =
        NavigationSplitViewVisibility.doubleColumn
    
    var body: some View {
        NavigationStack {
            BasicNavigationList(itemList: MainListItem.allCases)
                .toolbar {
                    ToolbarItem {
                        NavigationLink(destination: {
                            BasicNavigationList(itemList: HelpListItem.allCases)
                        }, label: {
                            Image(systemName: "questionmark.circle")
                                .accessibilityLabel(String(localized: "about_menu"))
                        })
                    }
                    
                }
        }
    }
}

#Preview {
    MainListView()
}

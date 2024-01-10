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
        NavigationSplitView(columnVisibility: $columnVisibility, sidebar: {
            BasicNavigationList(itemList: MainListItem.allCases)
                .toolbar {
                    NavigationLink(destination: {
                        Button(action: {
                            
                        }, label: {
                            BasicNavigationList(itemList: HelpListItem.allCases)
                        })
                    }, label: {
                        Image(systemName: "questionmark.circle")
                            .accessibilityLabel("Help menu")
                    })
                    
                }
        }, detail: {
            
        })
    }
}

#Preview {
    MainListView()
}

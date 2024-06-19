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
            List {
                Text("app_best_use")
                
                chartListView
                listItemView
                componentItemView
                stringItemView
                rotorItemView
            }
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
            .navigationTitle(String(localized: "home"))
        }
    }
    
    private var chartListView: some View {
        Section(header: Text(ChartListItem.navTitleString)) {
            ForEach(ChartListItem.allCases.sorted()) { item in
                ItemNavigationRow(item: item)
            }
        }
    }
    
    private var listItemView: some View {
        Section(header: Text(ListItem.navTitleString)) {
            ForEach(ListItem.allCases.sorted()) { item in
                ItemNavigationRow(item: item)
            }
        }
    }
    
    private var rotorItemView: some View {
        Section(header: Text(RotorListItem.navTitleString)) {
            ForEach(RotorListItem.allCases.sorted()) { item in
                ItemNavigationRow(item: item)
            }
        }
    }
    
    private var componentItemView: some View {
        Section(header: Text(ComponentItem.navTitleString)) {
            ForEach(ComponentItem.allCases.sorted()) { item in
                ItemNavigationRow(item: item)
            }
        }
    }
    
    private var stringItemView: some View {
        Section(header: Text(StringListItem.navTitleString)) {
            ForEach(StringListItem.allCases.sorted()) { item in
                ItemNavigationRow(item: item)
            }
        }
    }
}

#Preview {
    MainListView()
}

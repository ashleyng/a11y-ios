//
//  MainListView.swift
//  A11y
//
//  Created by Ashley Ng on 1/6/24.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                BasicNavigationList(itemList: MainListItem.allCases)
                    .toolbar {
                        Button {
                            
                        } label: {
                            NavigationLink(destination: {
                                BasicNavigationList(itemList: HelpListItem.allCases)
                            }, label: {
                                Image(systemName: "questionmark.circle")
                            })
                        }

                    }
            }
        } else {
            NavigationView {
                BasicNavigationList(itemList: MainListItem.allCases)
            }
        }
    }
}

#Preview {
    MainListView()
}

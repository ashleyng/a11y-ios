//
//  WhatIsThisView.swift
//  A11y
//
//  Created by Ashley Ng on 3/17/24.
//

import SwiftUI

struct WhatIsThisView: View {
    
    let title: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    Text("about_app1")
                        .maxWidthLeading()
                    Text("about_app2")
                        .maxWidthLeading()
                    Text("about_app3")
                        .maxWidthLeading()
                    Text("about_app4")
                        .maxWidthLeading()
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    WhatIsThisView(title: "_What is this")
}

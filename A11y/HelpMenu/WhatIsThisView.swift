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
                    Text("what_is_this_description")
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

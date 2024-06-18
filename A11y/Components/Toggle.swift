//
//  Toggle.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

struct ToggleA11y: View {
    
    let title: String
    
    @State private var isOn1 = true
    @State private var isOn2 = true
    @State private var isOn3 = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Text("toggle_description")
                        .maxWidthLeading()
                    
                    Toggle(isOn: $isOn1, label: {
                        Text("toggle_label")
                    })
                    Toggle(
                        "toggle_label",
                        systemImage: "lightswitch.off",
                        isOn: $isOn2
                    )
                    Toggle(isOn: $isOn3, label: {
                        Text("disabled_toggle")
                    })
                    .disabled(true)
                }
                .padding(16)
            }
            
        }
        .navigationTitle(title)
    }
}

#Preview {
    ToggleA11y(title: "Toggle")
}

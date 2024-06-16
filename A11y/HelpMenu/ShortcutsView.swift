//
//  ShortcutsView.swift
//  A11y
//
//  Created by Ashley Ng on 3/17/24.
//

import SwiftUI

struct ShortcutsView: View {
    
    let title: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    VStack(spacing:8) {
                        Text("menu_shortcut")
                        Text("control_center")
                    }
                    
                    VStack(spacing: 16) {
                        Text("settings")
                            .maxWidthLeading()
                            .font(.title)
                            .accessibilityAddTraits(.isHeader)
                            .accessibilityHeading(.h1)
                        
                        VStack {
                            Text("text_size")
                                .maxWidthLeading()
                                .font(.title2)
                                .accessibilityAddTraits(.isHeader)
                                .accessibilityHeading(.h2)
                            Text("text_size_description")
                        }
                        
                        VStack {
                            Text("reduce_motion")
                                .maxWidthLeading()
                                .font(.title2)
                                .accessibilityAddTraits(.isHeader)
                                .accessibilityHeading(.h2)
                            Text("reduce_motion_description")
                        }
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    ShortcutsView(title: "_Shortcuts")
}

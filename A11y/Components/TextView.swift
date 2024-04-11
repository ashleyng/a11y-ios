//
//  TextView.swift
//  A11y
//
//  Created by Ashley Ng on 3/29/24.
//

import SwiftUI

struct TextView: View {
    
    let title: String
    @State private var username1: String = ""
    @State private var username2: String = ""
    @State private var securedText: String = ""
    
    @State private var nameComponents1 = PersonNameComponents()
    @State private var nameComponents2 = PersonNameComponents()

    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Text("text_field")
                        .title()
                        .maxWidthLeading()
                    
                    
                    TextField("hint_text", text: $username1)
                        .padding(4)
                        .border(.secondary)
                    
                    SecureField("enter_password", text: $securedText)
                        .padding(4)
                        .border(.secondary)
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    TextView(title: "_Text View")
}

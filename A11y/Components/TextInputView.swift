//
//  TextInputView.swift
//  A11y
//
//  Created by Ashley Ng on 3/29/24.
//

import SwiftUI

struct TextInputView: View {
    
    let title: String
    
    @State private var username1: String = ""
    @State private var securedText1: String = ""
    
    @State private var username2: String = ""
    @State private var securedText2: String = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Text("text_input_description")
                    DividerSpacerView()
                    
                    Text("vertical_text_input")
                        .maxWidthLeading()
                        .title()
                    Group {
                        Text("username")
                            .maxWidthLeading()
                        TextField("required", text: $username1)
                            .padding(4)
                            .border(.secondary)
                    }
                    
                    Group {
                        Text("password")
                            .maxWidthLeading()
                        SecureField("required", text: $securedText1)
                            .padding(4)
                            .border(.secondary)
                    }
                    
                    DividerSpacerView()
                    
                    Text("horizontal_text_input")
                        .maxWidthLeading()
                        .title()
                    
                    HStack {
                        Text("username")
                            .maxWidthLeading()
                        TextField("required", text: $username2)
                            .padding(4)
                    }
                    HStack {
                        Text("password")
                            .maxWidthLeading()
                        SecureField("required", text: $securedText2)
                            .padding(4)
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    TextInputView(title: "_Text View")
}

//
//  TextInputFormView.swift
//  A11y
//
//  Created by Ashley Ng on 6/16/24.
//

import SwiftUI

struct TextInputFormView: View {
    let title: String
    @State private var username1: String = ""
    @State private var securedText: String = ""
    @State private var textEditor: String = String(localized: "write_message")
    
    var body: some View {
        NavigationStack {
            Form {
                Text("text_input_description")
                TextField("username", text: $username1)
                SecureField("password", text: $securedText)
                TextEditor(text: $textEditor)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    TextInputFormView(title: "_Text input form")
}

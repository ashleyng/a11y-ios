//
//  SimpleTextView.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

struct SimpleTextView: View {
    
    static func notImplemented() -> some View {
        SimpleTextView(label: String(localized: "not_implemented"))
    }
    
    let label: String
    
    var body: some View {
        Text(label)
            .padding(16)
    }
}

#Preview {
    SimpleTextView(label: "Preview string")
}

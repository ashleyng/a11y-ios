//
//  RotorHeadings.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

struct RotorHeadings: View {
    
    let title: String
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("heading1")
                        .maxWidthLeading()
                        .font(.title)
                        .accessibilityAddTraits(.isHeader)
                        .accessibilityHeading(.h1)
                    Text("rotor_helper")
                        .maxWidthLeading()
                    Text("rotor_dev_heading_helper")
                        .maxWidthLeading()
                    Text(String.loremIpsum())
                        .maxWidthLeading()
                    
                    Text("heading2")
                        .maxWidthLeading()
                        .font(.title)
                        .accessibilityAddTraits(.isHeader)
                        .accessibilityHeading(.h1)
                    Text(String.shortLoremIpsum())
                        .maxWidthLeading()
                    Text(String.loremIpsum())
                        .maxWidthLeading()
                    
                    Text("heading3")
                        .maxWidthLeading()
                        .font(.title)
                        .accessibilityAddTraits(.isHeader)
                        .accessibilityHeading(.h1)
                    Text(String.shortLoremIpsum())
                        .maxWidthLeading()
                    Text(String.shortLoremIpsum())
                        .maxWidthLeading()
                    Text(String.shortLoremIpsum())
                        .maxWidthLeading()
                    
                    Text("header4")
                        .maxWidthLeading()
                        .font(.title)
                        .accessibilityAddTraits(.isHeader)
                        .accessibilityHeading(.h1)
                    Text("sub_header1")
                        .maxWidthLeading()
                        .font(.title2)
                        .accessibilityAddTraits(.isHeader)
                        .accessibilityHeading(.h2)
                    Text(String.loremIpsum())
                        .maxWidthLeading()
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    RotorHeadings(title: "Rotor headings")
}

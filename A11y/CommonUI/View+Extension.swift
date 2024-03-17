//
//  View+Extension.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        return AnyView(self)
    }
    
    func maxWidthLeading() -> some View {
        modifier(MaxWidthLeadingModifier())
    }
}

struct MaxWidthLeadingModifier: ViewModifier {
        
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
            .fixedSize(horizontal: false, vertical: false)
    }
}


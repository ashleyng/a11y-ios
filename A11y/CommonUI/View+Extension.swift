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
}

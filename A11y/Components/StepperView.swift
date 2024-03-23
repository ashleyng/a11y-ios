//
//  StepperView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

struct StepperView: View {
    
    let title: String
    
    @State private var value = 0
    let step = 5
    let range = 0...100
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    let rangeString = String.localizedString(key: "range", arguments: range.lowerBound.formatted(), range.upperBound.formatted())
                    Text(String.localizedString(key: "stepper_range_step", arguments: rangeString, step.formatted()))
                    Stepper(
                        value: $value,
                        in: range,
                        step: step
                    ) {
                        Text(String.localizedString(key: "current_value", arguments: value.formatted()))
                    }
                    .padding(16)
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    StepperView(title: "_StepperView")
}

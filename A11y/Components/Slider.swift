//
//  Slider.swift
//  A11y
//
//  Created by Ashley Ng on 3/15/24.
//

import SwiftUI

struct SliderA11y: View {
    
    let title: String
    
    @State private var value1: Double = 0
    @State private var value2: Double = 0.75

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    VStack {
                        Slider(value: $value1, in: -100...100, label: {
                            Text("helper_slider_label")
                        })
                        Text("slider_with_label")
                        
                    }
                    VStack {
                        Slider(value: $value2, in: 0...1)
                            .disabled(true)
                        Text("disabled_slider")
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    SliderA11y(title: "Slider")
}

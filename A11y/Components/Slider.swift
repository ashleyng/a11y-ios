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
    @State private var value3: Double = 20

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    VStack {
                        Text("slider_with_label")
                            .maxWidthLeading()
                            .title()
                        
                        Text("slider_with_label_description")
                        Slider(value: $value1, in: -100...100, label: {
                            Text("helper_slider_label")
                        })
                    }
                    
                    DividerSpacerView()
                    
                    VStack {
                        Text("step_slider")
                            .maxWidthLeading()
                            .title()
                        Text(String.localizedString(key: "increments_of", arguments: "10"))
                            .maxWidthLeading()
                        
                        Slider(value: $value3, in: 0...100, step: 10)
                    }
                    
                    DividerSpacerView()
                    
                    VStack {
                        Text("disabled_slider")
                            .maxWidthLeading()
                            .title()
                        Text("disabled_slider_description")
                            .maxWidthLeading()
                        Slider(value: $value2, in: 0...1)
                            .disabled(true)
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

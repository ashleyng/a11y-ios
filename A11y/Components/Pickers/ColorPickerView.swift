//
//  ColorPickerView.swift
//  A11y
//
//  Created by Ashley Ng on 3/22/24.
//

import SwiftUI

struct ColorPickerView: View {
    
    let title: String
    
    @State private var bgColor = Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ColorPicker("color_picker", selection: $bgColor)
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    ColorPickerView(title: "_ColorPicker")
}

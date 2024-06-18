//
//  ButtonView.swift
//  A11y
//
//  Created by Ashley Ng on 3/29/24.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    @State var buttonPresses: Int = 0
     
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    
                    Text("button_style_descriptions")
                    
                    Text(String.localizedString(key: "button_press_count", arguments: buttonPresses.formatted()))
                        .maxWidthLeading()
                    
                    Button("increase_count", systemImage: "arrowshape.up", action: increaseCountPressed)
                        .labelStyle(.iconOnly)
                    
                    
                    Button(action: decreseCountPressed) {
                        Label("decrease_count", systemImage: "arrowshape.down")
                    }
                    .buttonStyle(.borderless)
                    
                    HStack {
                        Button(action: increaseCountPressed) {
                            Text("increase_count")
                        }
                        
                        Button("decrease_count", role: .destructive, action: decreseCountPressed)
                    }
                    
                    HStack {
                        Button(action: increaseCountPressed) {
                            Label("increase_count", systemImage: "arrowshape.up")
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Button(action: decreseCountPressed) {
                            Label("decrease_count", systemImage: "arrowshape.down")
                        }
                        .buttonStyle(.bordered)
                    }
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
    
    func increaseCountPressed() {
        buttonPresses += 1
    }
    
    func decreseCountPressed() {
        buttonPresses -= 1
    }
}

#Preview {
    ButtonView(title: "_Buttons")
}

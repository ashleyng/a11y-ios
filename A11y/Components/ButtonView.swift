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
                    Text(String.localizedString(key: "button_press_count", arguments: buttonPresses.formatted()))
                        .maxWidthLeading()
                    
                    Button(action: increaseCountPressed) {
                        Text("increase_count")
                    }
                    
                    Button(action: increaseCountPressed) {
                        Label("increase_count", systemImage: "arrowshape.up")
                    }
                    .buttonStyle(.bordered)
                    
                    Button("increase_count", systemImage: "arrowshape.up", action: increaseCountPressed)
                        .labelStyle(.iconOnly)
                    
                    Button("decrease_count", role: .destructive, action: decreseCountPressed)
                    
                    Button(action: decreseCountPressed) {
                        Label("decrease_count", systemImage: "arrowshape.down")
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button(action: decreseCountPressed) {
                        Label("decrease_count", systemImage: "arrowshape.down")
                    }
                    .buttonStyle(.borderless)
                    
                    Button("decrease_count", systemImage: "arrowshape.down", action: increaseCountPressed)
                        .buttonStyle(.bordered)
                        .labelStyle(.iconOnly)
                
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

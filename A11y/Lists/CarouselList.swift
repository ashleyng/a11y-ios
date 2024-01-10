//
//  CarouselList.swift
//  A11y
//
//  Created by Ashley Ng on 1/9/24.
//

import SwiftUI

struct CarouselList: View {
    
    @State private var imageNameString = [
        "pencil", "eraser", "pencil.tip", "trash", "folder", "paperplane",
        "book", "backpack", "paperclip", "link",  "trophy"
    ]
    
    var body: some View {
        if #available(iOS 17.0, *) {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(imageNameString, id: \.self) { imageName in
                        // If you do not do the combine elements, it will only
                        // focus on the image and scrolling with VoiceOver does
                        // not snap to next elements as when you're not in VoiceOver
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.blue)
                                .frame(width: 300, height: 100)
                            Image(systemName: imageName)
                                .foregroundStyle(.white)
                        }
                        .accessibilityElement(children: .combine)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .safeAreaPadding(.horizontal, 40)
        } else {
            EmptyView()
        }
    }
}

#Preview {
    CarouselList()
}

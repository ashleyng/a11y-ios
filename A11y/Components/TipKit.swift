//
//  TipKit.swift
//  A11y
//
//  Created by Ashley Ng on 3/21/25.
//

import SwiftUI
import TipKit

struct TipKitView: View {
    
    let title: String
    
    private let inlineTip = InlineTip()
    private let popoverTip = PopoverTip()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    Text("inline_tip_description")
                    
                    Button {
                        InlineTip.showInlineTip.toggle()
                    } label: {
                        Text("toggle_inline_tip")
                    }
                    TipView(inlineTip, arrowEdge: .top)
                    
                    Text("popover_tip_description")
                    
                    Button {
                        PopoverTip.showPopoverTip.toggle()
                    } label: {
                        Text("show_popover")
                    }
                    .popoverTip(popoverTip)
                }
                .padding(16)
            }
        }
        .navigationTitle(title)
    }
    

}

private struct InlineTip: Tip {
    
    @Parameter
    static var showInlineTip: Bool = false

    var rules: [Rule] {
        #Rule(Self.$showInlineTip) {
            $0 == true
        }
    }
    
    var title: Text {
        Text("inline_tip_title")
    }
    
    
    var message: Text? {
        Text(String.shortLoremIpsum())
    }
}

struct PopoverTip: Tip {
    
    @Parameter
    static var showPopoverTip: Bool = false
    
    var rules: [Rule] {
        #Rule(Self.$showPopoverTip) {
            $0 == true
        }
    }
    
    var title: Text {
        Text("popover_tip_title")
    }
    
    
    var message: Text? {
        Text(String.shortLoremIpsum())
    }
}

#Preview {
    TipKitView(title: "TipKit")
}

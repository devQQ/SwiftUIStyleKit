//
//  DisableHighlightButtonStyle.swift
//  
//
//  Created by Q Trang on 7/11/20.
//

import SwiftUI

public struct DisableHighlightButtonStyle: PrimitiveButtonStyle {
    struct CustomButton: View {
        let configuration: PrimitiveButtonStyleConfiguration
        
        var body: some View {
            configuration.label
                .gesture(TapGesture()
                    .onEnded({ _ in
                        self.configuration.trigger()
                    })
            )
                .background(Color.clear)
        }
    }
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        CustomButton(configuration: configuration)
    }
}

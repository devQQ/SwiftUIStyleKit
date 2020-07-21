//
//  Card.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI

public struct CardModifier: ViewModifier {
    var light: Bool
    
    public func body(content: Content) -> some View {
        return content
            .rounded(.r4)
            .shadow(color: Color.black.opacity(light ? 0.1 : 0.2), radius: .lg, x: 0.0, y: 2.0)
    }
}

extension View {
    public func card(light: Bool = false) -> some View {
        ModifiedContent(content: self, modifier: CardModifier(light: light))
    }
}


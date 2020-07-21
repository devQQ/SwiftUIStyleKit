//
//  View+Disclosure.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public struct ShowDisclosureIndicatorModifier: ViewModifier {
    public let color: Color
    
    public func body(content: Content) -> some View {
        HStack {
            content
            Image(systemName: "chevron.right")
                .foregroundColor(color)
        }
    }
}

extension View {
    public func disclosureIndicator(color: Color = Color.systemBlack) -> some View {
        ModifiedContent(content: self, modifier: ShowDisclosureIndicatorModifier(color: color))
    }
}


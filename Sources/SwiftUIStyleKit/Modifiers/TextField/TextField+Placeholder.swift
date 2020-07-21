//
//  TextField+Placeholder.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI

public struct TextFieldPlaceModifier: ViewModifier {
    public let placeholder: String
    public var show: Bool
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if show {
                Text(placeholder)
                    .foregroundColor(Color.systemGray2)
                    .font(.system(size: .callout, weight: .medium))
            }
            
            content
        }
    }
}

extension View {
    public func placeholder(_ placeholder: String, show: Bool) -> some View {
        ModifiedContent(content: self, modifier: TextFieldPlaceModifier(placeholder: placeholder, show: show))
    }
}


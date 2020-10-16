//
//  Image+Icon.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI
import SwiftUIToolbox

public enum IconSize {
    case sm, md, lg
    
    var value: CGFloat {
        switch self {
        case .sm:
            return 20
        case .md:
            return 22
        case .lg:
            return 24
        }
    }
}

public struct IconImageModifier: ImageModifier {
    let size: IconSize
    
    public func body(content: Image) -> some View {
        return content
            .resizable()
            .renderingMode(.template)
            .scaledToFit()
            .frame(width: size.value, height: size.value)
    }
}

extension Image {
    public func icon(size: IconSize = .md) -> some View {
        modifier(IconImageModifier(size: size))
    }
}

public struct IconModifier: ViewModifier {
    let size: IconSize
    
    public func body(content: Content) -> some View {
        content
            .frame(width: size.value, height: size.value)
    }
}

extension View {
    public func icon(size: IconSize = .md) -> some View {
        ModifiedContent(content: self, modifier: IconModifier(size: size))
    }
}


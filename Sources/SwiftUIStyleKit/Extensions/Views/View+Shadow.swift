//
//  View+Shadow.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public enum ShadowSize {
    case sm, md, lg, xl, xxl
    
    public var radius: CGFloat {
        switch self {
        case .sm:
            return 1
        case .md:
            return 2
        case .lg:
            return 4
        case .xl:
            return 8
        case .xxl:
            return 16
        }
    }
}

import SwiftUI

extension View {
    @inlinable public func shadow(color: Color = Color(.sRGBLinear, white: 0, opacity: 0.33), radius: ShadowSize, x: CGFloat = 0, y: CGFloat = 0) -> some View {
        shadow(color: color, radius: radius.radius, x: x, y: y)
    }
}

//
//  View+Rounded.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public struct RoundedModifier: ViewModifier {
    public let size: RoundedSize
    
    public func body(content: Content) -> some View {
        return content
            .cornerRadius(size.radius)
    }
}

public protocol RoundedSize {
    var radius: CGFloat { get }
}

public enum BaseRoundedSize: RoundedSize {
    case r4
    case r8
    case r12
    case r14
    case r16
    case r20
    case r24
    case r28
    case r32
    case r64
    case full
    
    public var radius: CGFloat {
        switch self {
        case .r4:
            return 4
        case .r8:
            return 8
        case .r12:
            return 12
        case .r14:
            return 14
        case .r16:
            return 16
        case .r20:
            return 20
        case .r24:
            return 24
        case .r28:
            return 28
        case .r32:
            return 32
        case .r64:
            return 64
        case .full:
            return 999
        }
    }
}

extension View {
    public func rounded(_ size: RoundedSize) -> some View {
        ModifiedContent(content: self, modifier: RoundedModifier(size: size))
    }
    
    public func rounded(_ size: BaseRoundedSize) -> some View {
        ModifiedContent(content: self, modifier: RoundedModifier(size: size))
    }
}



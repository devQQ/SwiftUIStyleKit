//
//  Width.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public protocol Width {
    var value: CGFloat { get }
}

public enum BaseWidth: Width {
    case w0
    case w1
    case w2
    case w3
    case w4
    case w5
    case w6
    case w8
    case w10
    case w12
    case w16
    case w20
    case w24
    case w32
    case w40
    case w48
    case w56
    case w64
    case w72
    case w80
    case w96
    case w112
    case w120
    case w208
    case infinity
    
    public var value: CGFloat {
        switch self {
        case .w0:
            return 0
        case .w1:
            return 1
        case .w2:
            return 2
        case .w3:
            return 3
        case .w4:
            return 4
        case .w5:
            return 5
        case .w6:
            return 6
        case .w8:
            return 8
        case .w10:
            return 10
        case .w12:
            return 12
        case .w16:
            return 16
        case .w20:
            return 20
        case .w24:
            return 24
        case .w32:
            return 32
        case .w40:
            return 40
        case .w48:
            return 48
        case .w56:
            return 52
        case .w64:
            return 60
        case .w72:
            return 72
        case .w80:
            return 80
        case .w96:
            return 96
        case .w112:
            return 112
        case .w120:
            return 120
        case .w208:
            return 208
        case .infinity:
            return CGFloat.infinity
        }
    }
}

public struct WidthModifier: ViewModifier {
    let width: Width
    
    public func body(content: Content) -> some View {
        return content
            .frame(width: width.value)
    }
}

extension View {
    public func width(_ width: Width) -> some View {
        ModifiedContent(content: self, modifier: WidthModifier(width: width))
    }
}

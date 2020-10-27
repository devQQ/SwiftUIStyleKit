//
//  Height.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public protocol Height {
    var value: CGFloat { get }
}

public enum BaseHeight: Height {
    case h0
    case h1
    case h2
    case h3
    case h4
    case h8
    case h10
    case h12
    case h16
    case h24
    case h32
    case h40
    case h44
    case h48
    case h52
    case h60
    case h64
    case h72
    case h80
    case h96
    case h112
    case h120
    case h144
    case h160
    case h176
    case h192
    case h220
    case h232
    case h244
    case h264
    case h272
    case h280
    case infinity
    
    public var value: CGFloat {
        switch self {
        case .h0:
            return 0
        case .h1:
            return 1
        case .h2:
            return 2
        case .h3:
            return 3
        case .h4:
            return 4
        case .h8:
            return 8
        case .h10:
            return 10
        case .h12:
            return 12
        case .h16:
            return 16
        case .h24:
            return 24
        case .h32:
            return 32
        case .h40:
            return 40
        case .h44:
            return 44
        case .h48:
            return 48
        case .h52:
            return 52
        case .h60:
            return 60
        case .h64:
            return 64
        case .h72:
            return 72
        case .h80:
            return 80
        case .h96:
            return 96
        case .h112:
            return 112
        case .h120:
            return 120
        case .h144:
            return 144
        case .h160:
            return 160
        case .h176:
            return 176
        case .h192:
            return 192
        case .h220:
            return 220
        case .h232:
            return 232
        case .h244:
            return 244
        case .h264:
            return 264
        case .h272:
            return 272
        case .h280:
            return 280
        case .infinity:
            return CGFloat.infinity
        }
    }
}

public struct HeightModifier: ViewModifier {
    let height: Height
    
    public func body(content: Content) -> some View {
        return content
            .frame(height: height.value)
    }
}

extension View {
    public func height(_ height: Height) -> some View {
        ModifiedContent(content: self, modifier: HeightModifier(height: height))
    }
    
    public func height(_ height: BaseHeight) -> some View {
        ModifiedContent(content: self, modifier: HeightModifier(height: height))
    }
}



//
//  Spacing.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import UIKit

public protocol Spacing {
    var value: CGFloat { get }
}

public enum BaseSpacing: Spacing {
    case s0
    case s1
    case s2
    case s3
    case s4
    case s5
    case s6
    case s8
    case s10
    case s12
    case s16
    case s18
    case s20
    case s24
    case s28
    case s32
    case s40
    case s44
    case s48
    case s60
    case s64
    case s72
    case s80
    case s100
    case sNeg1
    case sNeg2
    case sNeg3
    case sNeg4
    case sNeg8
    case sNeg12
    case sNeg16
    case sNeg32
    
    public var value: CGFloat {
        switch self {
        case .sNeg32:
            return -32
        case .sNeg16:
            return -16
        case .sNeg12:
            return -12
        case .sNeg8:
            return -8
        case .sNeg4:
            return -4
        case .sNeg3:
            return -3
        case .sNeg2:
            return -2
        case .sNeg1:
            return -1
        case .s0:
            return 0
        case .s1:
            return 1
        case .s2:
            return 2
        case .s3:
            return 3
        case .s4:
            return 4
        case .s5:
            return 5
        case .s6:
            return 6
        case .s8:
            return 8
        case .s10:
            return 10
        case .s12:
            return 12
        case .s16:
            return 16
        case .s18:
            return 18
        case .s20:
            return 20
        case .s24:
            return 24
        case .s28:
            return 28
        case .s32:
            return 32
        case .s40:
            return 40
        case .s44:
            return 44
        case .s48:
            return 48
        case .s60:
            return 60
        case .s64:
            return 64
        case .s72:
            return 72
        case .s80:
            return 80
        case .s100:
            return 100
        }
    }
}

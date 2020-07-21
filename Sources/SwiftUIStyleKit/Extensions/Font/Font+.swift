//
//  Font+.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI

public enum FontSize {
    case body
    case bodyEmphasis
    case callout
    case caption1
    case caption2
    case footnote
    case largeTitle
    case subhead
    case subtitle
    case title1
    case title1Dot5
    case title2
    case title3
    
    public var value: CGFloat {
        switch self {
        case .body:
            return 17
        case .bodyEmphasis:
            return 18
        case .callout:
            return 16
        case .caption1:
            return 12
        case .caption2:
            return 11
        case .footnote:
            return 13
        case .largeTitle:
            return 34
        case .subhead:
            return 15
        case .subtitle:
            return 14
        case .title1:
            return 28
        case .title1Dot5:
            return 24
        case .title2:
            return 22
        case .title3:
            return 20
        }
    }
}

extension Font {
    public static func system(size: FontSize, weight: Font.Weight = .regular, design: Font.Design = .default) -> Font {
        Font.system(size: size.value, weight: weight, design: design)
    }
}


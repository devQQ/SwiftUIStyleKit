//
//  VStack+.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

extension VStack {
    public init(alignment: HorizontalAlignment = .center, spacing: Spacing, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: spacing.value, content: content)
    }
    
    public init(alignment: HorizontalAlignment = .center, spacing: BaseSpacing, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: spacing.value, content: content)
    }
}


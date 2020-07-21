//
//  HStack+.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

extension HStack {
    @inlinable public init(alignment: VerticalAlignment = .center, spacing: Spacing, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: spacing.value, content: content)
    }
    
    @inlinable public init(alignment: VerticalAlignment = .center, spacing: BaseSpacing, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: spacing.value, content: content)
    }
}


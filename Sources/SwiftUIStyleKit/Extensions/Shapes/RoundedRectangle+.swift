//
//  RoundedRectangle+.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

extension RoundedRectangle {
    public init(cornerRadius: RoundedSize) {
        self.init(cornerRadius: cornerRadius.radius)
    }
    
    public init(cornerRadius: BaseRoundedSize) {
        self.init(cornerRadius: cornerRadius.radius)
    }
}


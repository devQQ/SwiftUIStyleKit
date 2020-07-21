//
//  View+.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

extension View {
    @inlinable public func pad(edges: Edge.Set = .all, spacing: Spacing? = nil) -> some View {
        padding(edges, spacing != nil ? spacing!.value : nil)
    }
    
    @inlinable public func pad(edges: Edge.Set = .all, spacing: BaseSpacing? = nil) -> some View {
        padding(edges, spacing != nil ? spacing!.value : nil)
    }
    
    @inlinable public func offset(x: Spacing, y: Spacing) -> some View {
        offset(x: x.value, y: y.value)
    }
    
    @inlinable public func offset(x: BaseSpacing = .s0, y: BaseSpacing = .s0) -> some View {
        offset(x: x.value, y: y.value)
    }
    
    @inlinable public func frame(width: Width? = nil, height: Height? = nil, alignment: Alignment = .center) -> some View {
        frame(width: width?.value, height: height?.value, alignment: alignment)
    }
    
    @inlinable public func frame(width: BaseWidth? = nil, height: BaseWidth? = nil, alignment: Alignment = .center) -> some View {
        frame(width: width?.value, height: height?.value, alignment: alignment)
    }
    
    @inlinable public func frame(minWidth: Width, maxWidth: Width, minHeight: Height = BaseHeight.h0, maxHeight: Height = BaseHeight.infinity) -> some View {
        frame(minWidth: minWidth.value, maxWidth: maxWidth.value, minHeight: minHeight.value, maxHeight: maxHeight.value)
    }
    
    @inlinable public func frame(minWidth: BaseWidth = .w0, maxWidth: BaseWidth = .infinity, minHeight: BaseHeight = .h0, maxHeight: BaseHeight = .infinity) -> some View {
        frame(minWidth: minWidth.value, maxWidth: maxWidth.value, minHeight: minHeight.value, maxHeight: maxHeight.value)
    }
}

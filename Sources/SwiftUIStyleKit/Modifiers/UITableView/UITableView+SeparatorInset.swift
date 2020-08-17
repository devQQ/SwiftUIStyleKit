//
//  UITableView+SeparatorInset.swift
//  
//
//  Created by Q Trang on 8/17/20.
//

import SwiftUI

public struct UITableViewNoSeparatorInsetModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .onAppear {
                UITableView.appearance().separatorInset = .zero
        }
    }
}

extension View {
    public func removeSepartorInsets() -> some View {
        ModifiedContent(content: self, modifier: UITableViewNoSeparatorInsetModifier())
    }
}

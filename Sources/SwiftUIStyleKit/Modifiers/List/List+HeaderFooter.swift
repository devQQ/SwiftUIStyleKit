//
//  List+HeaderFooter.swift
//  
//
//  Created by Quang Trang on 7/21/20.
//

import SwiftUI

public struct ListHeaderFooterTintColorModifier: ViewModifier {
    let color: UIColor
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
                UITableViewHeaderFooterView.appearance().tintColor = self.color
        }
        .onDisappear {
            UITableViewHeaderFooterView.appearance().tintColor = UIColor.systemGroupedBackground
        }
    }
}

extension List {
    public func headerFooterTintColor(color: UIColor) -> some View {
        ModifiedContent(content: self, modifier: ListHeaderFooterTintColorModifier(color: color))
    }
}


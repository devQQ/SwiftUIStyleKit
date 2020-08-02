//
//  TabBarItem+Font.swift
//  
//
//  Created by Q Trang on 8/1/20.
//

import SwiftUI

public struct TabBarItemFontModifier: ViewModifier {
    public let font: UIFont
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
                UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: self.font], for: .normal)
        }
    }
}

extension View {
    public func setTabBarItemFont(_ font: UIFont) -> some View {
        ModifiedContent(content: self, modifier: TabBarItemFontModifier(font: font))
    }
}


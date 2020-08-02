//
//  TabBarItem+Font.swift
//  
//
//  Created by Q Trang on 8/1/20.
//

import SwiftUI

struct TabBarItemFontModifier: ViewModifier {
    let font: UIFont
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: self.font], for: .normal)
        }
    }
}

extension View {
    func setTabBarItemFont(_ font: UIFont) -> some View {
        ModifiedContent(content: self, modifier: TabBarItemFontModifier(font: font))
    }
}


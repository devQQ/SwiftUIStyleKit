//
//  TabUnselectedColorModifier.swift
//  
//
//  Created by Q Trang on 7/3/20.
//

import SwiftUI

public struct TabUnselectedColorModifier: ViewModifier {
    let color: UIColor
    
    public func body(content: Content) -> some View {
        return content
            .onAppear {
                UITabBar.appearance().unselectedItemTintColor = self.color
        }
        .onDisappear {
            UITabBar.appearance().unselectedItemTintColor = UIColor.gray800
        }
    }
}

extension TabView {
    public func unselectedColor(_ color: UIColor) -> some View {
        ModifiedContent(content: self, modifier: TabUnselectedColorModifier(color: color))
    }
}

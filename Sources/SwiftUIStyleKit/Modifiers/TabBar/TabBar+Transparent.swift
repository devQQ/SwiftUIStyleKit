//
//  TabBar+Transparent.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public struct TabBarTransparentModifier: ViewModifier {
    let color: UIColor
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
            UITabBar.appearance().backgroundImage = UIImage()
                UITabBar.appearance().backgroundColor = self.color
        }
        .onDisappear {
            UITabBar.appearance().backgroundImage = nil
        }
    }
}

extension View {
    public func tabBarTransparent(backgroundColor: UIColor) -> some View {
        ModifiedContent(content: self, modifier: TabBarTransparentModifier(color: backgroundColor))
    }
}


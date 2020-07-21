//
//  TabBar+Background.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public struct TabBarBackgroundModifier: ViewModifier {
    let color: UIColor
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
            UITabBar.appearance().backgroundColor = self.color
        }
        .onDisappear {
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

extension View {
    public func tabBarBackgroundColor(_ color: UIColor) -> some View {
        ModifiedContent(content: self, modifier: TabBarBackgroundModifier(color: color))
    }
}


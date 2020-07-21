//
//  List+Background.swift
//  
//
//  Created by Quang Trang on 7/21/20.
//

import SwiftUI

public struct BackgroundColorModifier: ViewModifier {
    public let color: UIColor
    
    public func body(content: Content) -> some View {
        return content
            .onAppear {
                UITableView.appearance().backgroundColor = self.color
        }
        .onDisappear {
            UITableView.appearance().backgroundColor = .white
        }
    }
}

extension List {
    public func backgroundColor(_ color: UIColor) -> some View {
        ModifiedContent(content: self, modifier: BackgroundColorModifier(color: color))
    }
}

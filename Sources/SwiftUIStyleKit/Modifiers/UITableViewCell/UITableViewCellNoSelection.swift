//
//  UITableViewCellNoSelection.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import SwiftUI

public struct UITableViewCellNoSelectionModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .onAppear {
                UITableViewCell.appearance().selectionStyle = .none
        }
    }
}

extension View {
    public func listNoSelectionStyle() -> some View {
        ModifiedContent(content: self, modifier: UITableViewCellNoSelectionModifier())
    }
}


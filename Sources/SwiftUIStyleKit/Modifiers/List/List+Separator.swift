//
//  List+Separator.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI

public struct NoSeparatorLinesModifier: ViewModifier {
    public func body(content: Content) -> some View {
        return content
            .onAppear {
                UITableView.appearance().separatorStyle = .none
        }
        .onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
    }
}

public struct RemoveBottomExtraSeparatorLinesModifier: ViewModifier {
    public func body(content: Content) -> some View {
        return content
            .onAppear {
                UITableView.appearance().tableFooterView = UIView()
        }
        .onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
    }
}

extension View {
    public func noSeparatorLines() -> some View {
        ModifiedContent(content: self, modifier: NoSeparatorLinesModifier())
    }
    
    public func removeBottomExtraSeparatorLines() -> some View {
        ModifiedContent(content: self, modifier: RemoveBottomExtraSeparatorLinesModifier())
    }
}




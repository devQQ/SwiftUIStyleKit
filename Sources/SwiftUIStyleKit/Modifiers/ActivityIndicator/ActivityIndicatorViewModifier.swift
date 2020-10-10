//
//  ActivityIndicatorViewModifier.swift
//  
//
//  Created by Q Trang on 8/18/20.
//

import SwiftUI

public struct ActivityIndicatorViewModifier: ViewModifier {
    @Binding var isAnimating: Bool
    let text: String
    let backgroundColor: Color
    let size: CGSize
    
    public init(isAnimating: Binding<Bool>, text: String, backgroundColor: Color, size: CGSize) {
        self._isAnimating = isAnimating
        self.text = text
        self.backgroundColor = backgroundColor
        self.size = size
    }
    
    public func body(content: Content) -> some View {
        if self.isAnimating {
            return VStack {
                LoadingView(isAnimating: self.$isAnimating, text: self.text, size: self.size)
            }
            .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            .background(self.backgroundColor)
            .opacity(self.isAnimating ? 1 : 0)
            .eraseToAnyView()
        } else {
            return content.eraseToAnyView()
        }
    }
}

extension View {
    public func activityIndicator(isAnimating: Binding<Bool>,
                                  text: String,
                                  backgroundColor: Color = Color.systemWhite,
                                  size: CGSize = CGSize(width: BaseWidth.w32.value,
                                                        height: BaseHeight.h32.value)) -> some View {
        ModifiedContent(content: self, modifier: ActivityIndicatorViewModifier(isAnimating: isAnimating, text: text, backgroundColor: backgroundColor, size: size))
    }
}

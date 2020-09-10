//
//  LoadingView.swift
//  
//
//  Created by Q Trang on 8/18/20.
//

import SwiftUI

public struct LoadingView: View {
    @Binding public var isAnimating: Bool
    public let text: String
    public let textColor: Color
    public var size: CGSize
    
    public init(isAnimating: Binding<Bool>, text: String, textColor: Color = Color.gray900, size: CGSize = CGSize(width: BaseWidth.w32.value, height: BaseHeight.h32.value)) {
        self._isAnimating = isAnimating
        self.text = text
        self.textColor = textColor
        self.size = size
    }
    
    public var body: some View {
        VStack(alignment: .center, spacing: .s4) {
            Text(text)
                .foregroundColor(textColor)
                .font(.system(size: .bodyEmphasis, weight: .semibold))
            
            HStack {
                SwiftUINVActivityIndicatorView(isAnimating: self.$isAnimating, size: size, type: .ballPulseSync)
                    .frame(maxWidth: .w32, minHeight: .h32, maxHeight: .h32)
            }
        }
        .background(Color.clear)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoadingView(isAnimating: .constant(true), text: "Loading")
        }
    }
}


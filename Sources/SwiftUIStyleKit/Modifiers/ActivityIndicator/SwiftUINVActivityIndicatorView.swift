//
//  SwiftUINVActivityIndicatorView.swift
//  
//
//  Created by Q Trang on 8/18/20.
//

import SwiftUI
import NVActivityIndicatorView

public struct SwiftUINVActivityIndicatorView: UIViewRepresentable {
    @Binding var isAnimating: Bool
    public let size: CGSize
    public let type: NVActivityIndicatorType
    public let color: UIColor
    
    public init(isAnimating: Binding<Bool>, size: CGSize, type: NVActivityIndicatorType, color: UIColor = UIColor.gray900) {
        self._isAnimating = isAnimating
        self.size = size
        self.type = type
        self.color = color
    }
    
    public func makeUIView(context: Context) -> NVActivityIndicatorView {
        return NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height), type: type, color: self.color)
    }
    
    public func updateUIView(_ uiView: NVActivityIndicatorView, context: Context) {
        if isAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}


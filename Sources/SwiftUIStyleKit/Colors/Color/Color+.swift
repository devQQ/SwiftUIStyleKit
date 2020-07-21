//
//  Color+.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI
import UIKit

extension Color {
    public static func dynamic(light: UIColor, dark: UIColor) -> Color {
        let uiColor = UIColor { (trait) -> UIColor in
            trait.userInterfaceStyle == .light ?
               light : dark
        }
        return Color(uiColor)
    }
}


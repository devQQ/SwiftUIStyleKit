//
//  UIColor+.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import UIKit

extension UIColor {
    public static func dynamic(light: UIColor, dark: UIColor) -> UIColor {
        UIColor { (trait) -> UIColor in
            trait.userInterfaceStyle == .light ?
               light : dark
        }
    }
}


//
//  UIColor+System.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import UIKit

extension UIColor {
    public static var systemBlack: UIColor {
        UIColor.dynamic(light: UIColor.black, dark: UIColor.gray200)
    }
    
    public static var systemWhite: UIColor {
        let light = UIColor.white
        let dark = UIColor(red: 45/255, green: 55/255, blue: 72/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
}


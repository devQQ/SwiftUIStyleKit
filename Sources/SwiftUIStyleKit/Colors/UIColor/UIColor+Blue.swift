//
//  UIColor+Blue.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import UIKit

extension UIColor {
    public static var blue100: UIColor {
        let light = UIColor(red: 235/255, green: 248/255, blue: 255/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue200: UIColor {
        let light = UIColor(red: 190/255, green: 227/255, blue: 248/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue300: UIColor {
        let light = UIColor(red: 144/255, green: 205/255, blue: 244/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue400: UIColor {
        let light = UIColor(red: 99/255, green: 179/255, blue: 237/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue500: UIColor {
        let light = UIColor(red: 66/255, green: 153/255, blue: 255/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue600: UIColor {
        let light = UIColor(red: 49/255, green: 130/255, blue: 206/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue700: UIColor {
        let light = UIColor(red: 43/255, green: 108/255, blue: 176/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue800: UIColor {
        let light = UIColor(red: 44/255, green: 82/255, blue: 130/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var blue900: UIColor {
        let light = UIColor(red: 42/255, green: 67/255, blue: 101/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
}


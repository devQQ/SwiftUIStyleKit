//
//  UIColor+Gray.swift
//  
//
//  Created by Q Trang on 7/20/20.
//

import UIKit

extension UIColor {
    public static var gray100: UIColor {
        let light = UIColor(red: 247/255, green: 250/255, blue: 252/255, alpha: 1.0)
        let dark = UIColor(red: 26/255, green: 32/255, blue: 44/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray200: UIColor {
        let light = UIColor(red: 237/255, green: 242/255, blue: 247/255, alpha: 1.0)
        let dark = UIColor(red: 45/255, green: 55/255, blue: 72/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray300: UIColor {
        let light = UIColor(red: 226/255, green: 232/255, blue: 240/255, alpha: 1.0)
        let dark = UIColor.systemGray4
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray400: UIColor {
        let light = UIColor(red: 203/255, green: 213/255, blue: 224/255, alpha: 1.0)
        let dark = UIColor.systemGray2
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray500: UIColor {
        let light = UIColor(red: 160/255, green: 174/255, blue: 192/255, alpha: 1.0)
        let dark = UIColor(red: 237/255, green: 242/255, blue: 247/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray600: UIColor {
        let light = UIColor(red: 113/255, green: 128/255, blue: 150/255, alpha: 1.0)
        let dark = UIColor(red: 203/255, green: 213/255, blue: 224/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray700: UIColor {
        let light = UIColor(red: 75/255, green: 85/255, blue: 104/255, alpha: 1.0)
        let dark = UIColor(red: 203/255, green: 213/255, blue: 224/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray800: UIColor {
        let light = UIColor(red: 45/255, green: 55/255, blue: 72/255, alpha: 1.0)
        let dark = UIColor.systemGray6
        
        return UIColor.dynamic(light: light, dark: dark)
    }
    
    public static var gray900: UIColor {
        let light = UIColor(red: 26/255, green: 32/255, blue: 44/255, alpha: 1.0)
        let dark = UIColor(red: 226/255, green: 232/255, blue: 240/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: dark)
    }
}


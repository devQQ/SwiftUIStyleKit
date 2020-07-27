//
//  UIColor+Red.swift
//  
//
//  Created by Q Trang on 7/27/20.
//

import UIKit

extension UIColor {
    public static var red100: UIColor {
        let light = UIColor(red: 255/255, green: 245/255, blue: 245/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red200: UIColor {
        let light = UIColor(red: 254/255, green: 215/255, blue: 215/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red300: UIColor {
        let light = UIColor(red: 254/255, green: 178/255, blue: 178/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red400: UIColor {
        let light = UIColor(red: 252/255, green: 129/255, blue: 129/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red500: UIColor {
        let light = UIColor(red: 245/255, green: 101/255, blue: 101/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red600: UIColor {
        let light = UIColor(red: 229/255, green: 62/255, blue: 62/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red700: UIColor {
        let light = UIColor(red: 197/255, green: 48/255, blue: 48/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red800: UIColor {
        let light = UIColor(red: 155/255, green: 44/255, blue: 44/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var red900: UIColor {
        let light = UIColor(red: 116/255, green: 42/255, blue: 42/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
}

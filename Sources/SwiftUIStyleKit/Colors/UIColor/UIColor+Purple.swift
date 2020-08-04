//
//  UIColor+Purple.swift
//  
//
//  Created by Q Trang on 8/4/20.
//

import UIKit

extension UIColor {
    public static var purple100: UIColor {
        let light = UIColor(red: 250/255, green: 245/255, blue: 255/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple200: UIColor {
        let light = UIColor(red: 233/255, green: 216/255, blue: 253/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }

    public static var purple300: UIColor {
        let light = UIColor(red: 214/255, green: 188/255, blue: 250/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple400: UIColor {
        let light = UIColor(red: 183/255, green: 148/255, blue: 244/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple500: UIColor {
        let light = UIColor(red: 159/255, green: 122/255, blue: 234/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple600: UIColor {
        let light = UIColor(red: 128/255, green: 90/255, blue: 213/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple700: UIColor {
        let light = UIColor(red: 107/255, green: 70/255, blue: 193/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple800: UIColor {
        let light = UIColor(red: 85/255, green: 60/255, blue: 154/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
    
    public static var purple900: UIColor {
        let light = UIColor(red: 68/255, green: 51/255, blue: 122/255, alpha: 1.0)
        
        return UIColor.dynamic(light: light, dark: light)
    }
}

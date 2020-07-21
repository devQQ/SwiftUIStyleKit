//
//  Color+System.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI
import UIKit

// MARK: System Gray
extension Color {
    public static var systemGray: Color {
        Color(UIColor.systemGray)
    }
    
    public static var systemGray2: Color {
        Color(UIColor.systemGray2)
    }
    
    public static var systemGray3: Color {
        Color(UIColor.systemGray3)
    }
    
    public static var systemGray4: Color {
        Color(UIColor.systemGray4)
    }
    
    public static var systemGray5: Color {
        Color(UIColor.systemGray5)
    }
    
    public static var systemGray6: Color {
        Color(UIColor.systemGray6)
    }
}

// MARK: Misc
extension Color {
    public static var systemBlack: Color {
        let light = UIColor.black
        let dark = UIColor(red: 203/255, green: 213/255, blue: 224/255, alpha: 1.0)
        
        return Color.dynamic(light: light, dark: dark)
    }
    
    public static var systemBlue: Color {
        Color(UIColor.systemBlue)
    }
    
    public static var systemGreen: Color {
        Color(UIColor.systemGreen)
    }
    
    public static var systemIndigo: Color {
        Color(UIColor.systemIndigo)
    }
    
    public static var systemOrange: Color {
        Color(UIColor.systemOrange)
    }
    
    public static var systemPink: Color {
        Color(UIColor.systemPink)
    }
    
    public static var systemPurple: Color {
        Color(UIColor.systemPurple)
    }
    
    public static var systemRed: Color {
        Color(UIColor.systemRed)
    }
    
    public static var systemTeal: Color {
        Color(UIColor.systemTeal)
    }
    
    public static var systemYellow: Color {
        Color(UIColor.systemYellow)
    }
}



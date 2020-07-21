//
//  Color+White.swift
//  
//
//  Created by Q Trang on 7/21/20.
//

import SwiftUI

extension Color {
    public static var systemWhite: Color {
        Color(UIColor.systemWhite)
    }
    
    public static var offWhite: Color {
        let light = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1.0)
        let dark = UIColor.systemGray6
        
        return Color.dynamic(light: light, dark: dark)
    }
}

//
//  Annex.swift
//  MyImageFeed
//
//  Created by Alexey on 14.03.2023.
//

import UIKit

enum Colors {
    static let ypBlack      = UIColor(hex: "#1A1B22")
    static let ypRed        = UIColor(hex: "#F56B6C")
    static let ypWhite      = UIColor(hex: "#FFFFFF")
    static let ypGray       = UIColor(hex: "#AEAFB4")
    static let ypGreen       = UIColor(hex: "#008000")
}

enum Profile {
    static let defaultAvatar        = UIImage(named: "avatar")
    static let logoutButtonImage    = UIImage(named: "logout_button")
}
    
extension UIColor {
    convenience init?(hex: String) {
        var hexSanitezed = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitezed = hexSanitezed.replacingOccurrences(of: "#", with: "")
        
        let length = hexSanitezed.count
        
        var rgb: UInt64 = 0
        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0
        
        guard Scanner(string: hexSanitezed).scanHexInt64(&rgb) else { return nil}
        
        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000FF)) / 255.0
        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat((rgb & 0x000000FF)) / 255.0
        } else {
            return nil
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}

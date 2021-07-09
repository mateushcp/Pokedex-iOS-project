//
//  Extensions.swift
//  Pokedex
//
//  Created by Mateus Henrique Coelho de Paulo on 02/07/21.
//

import UIKit

extension UIView {


public static func withHeight(_ height: CGFloat) -> UIView {
        let view = UIView()
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: height)
        ])
        return view
    }
    public static func withWidth(_ width: CGFloat) -> UIView {
            let view = UIView()
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: width)
            ])
            return view
        }
}
func getUIColor(hex: String, alpha: Double = 1.0) -> UIColor? {
    var cleanString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cleanString.hasPrefix("#")) {
        cleanString.remove(at: cleanString.startIndex)
    }

    if ((cleanString.count) != 6) {
        return nil
    }

    var rgbValue: UInt32 = 0
    Scanner(string: cleanString).scanHexInt32(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
    
}




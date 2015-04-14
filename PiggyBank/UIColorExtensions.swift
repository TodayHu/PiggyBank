//
//  UIColorExtensions.swift
//  PiggyBank
//
//  Created by Daniel Lam on 13/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.

import Foundation

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
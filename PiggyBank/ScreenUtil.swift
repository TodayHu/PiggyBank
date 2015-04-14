//
//  ScreenUtil.swift
//  PiggyBank
//
//  Created by Daniel Lam on 13/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import Foundation

/// Provide some util functions.
class ScreenUtil {

    // Allows this class to be instantiated in Singleton pattern.
    // http://stackoverflow.com/questions/24024549/dispatch-once-singleton-model-in-swift#
    class var sharedInstance: ScreenUtil {
        struct Static {
            static let instance: ScreenUtil = ScreenUtil()
        }
        return Static.instance
    }

    func getButton() -> UIButton {
        var button = UIButton(forAutoLayout: ())
        button.backgroundColor = Style.colorLemonChiffon
        button.layer.cornerRadius = 10.0
        button.setTitleColor(Style.colorBrown, forState: .Normal)
        button.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
        return button
    }
}

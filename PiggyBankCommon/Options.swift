//
//  Options.swift
//  PiggyBank
//
//  Created by Daniel Lam on 19/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import Foundation

/**
 Allowed options to be shared between Containing iOS app and WatchKit extension.
 */
public class Options {
    
    // Allows this class to be instantiated in Singleton pattern.
    // http://stackoverflow.com/questions/24024549/dispatch-once-singleton-model-in-swift#
    public class var sharedInstance: Options {
        struct Static {
            static let instance: Options = Options()
        }
        return Static.instance
    }
    
    let kSharedAppGroupName = "group.com.hungrysource.PiggyBank.shared"
    let kSharedDefaultsKeyBalance = "balance"
    
    public func getBalance() -> Double {
        let sharedDefaults = NSUserDefaults(suiteName: kSharedAppGroupName) as NSUserDefaults!
        let balance = sharedDefaults.doubleForKey(kSharedDefaultsKeyBalance)
        return balance
    }
    
    public func setBalance(balance: Double) {
        let sharedDefaults = NSUserDefaults(suiteName: kSharedAppGroupName) as NSUserDefaults!
        sharedDefaults.setDouble(balance, forKey: kSharedDefaultsKeyBalance)
    }
}
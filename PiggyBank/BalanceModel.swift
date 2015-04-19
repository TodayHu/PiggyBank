//
//  BalanceModel.swift
//  PiggyBank
//
//  Created by Daniel Lam on 17/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import Foundation

public class BalanceModel {
    
    private var balance = 0.0
    
    // Allows this class to be instantiated in Singleton pattern.
    // http://stackoverflow.com/questions/24024549/dispatch-once-singleton-model-in-swift#
    public class var sharedInstance: BalanceModel {
        struct Static {
            static let instance: BalanceModel = BalanceModel()
        }
        return Static.instance
    }

    init() {
        // Get balance from NSUserDefaults.
        balance = Options.sharedInstance.getBalance()
    }

    public func addMoney(amount: Double) {
        balance += amount
        println("addMoney: balance: \(balance)")
        Options.sharedInstance.setBalance(balance)
    }

    public func spendAll() {
        balance = 0.0
        Options.sharedInstance.setBalance(balance)
    }

    public func getBalanceString() -> String {
        return String(format: "$%.0f", balance)
    }
}

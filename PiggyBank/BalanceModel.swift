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
    
    public init() {
    }

    public func addMoney(amount: Double) {
        balance += amount
    }

    public func spendAll() {
        balance = 0.0
    }

    public func getBalanceString() -> String {
        return String(format: "$%.0f", balance)
    }
}

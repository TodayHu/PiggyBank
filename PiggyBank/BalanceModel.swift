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
    
    func addMoney(amount: Double) {
        balance += amount
    }

    func spendAll() {
        balance = 0.0
    }

    func getBalanceString() -> String {
        return String(format: "$%.0f", balance)
    }
}

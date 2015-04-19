//
//  InterfaceController.swift
//  PiggyBank WatchKit Extension
//
//  Created by Daniel Lam on 18/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import WatchKit
import Foundation
import PiggyBankCommon

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var balanceLabel: WKInterfaceLabel!
    
    private var balanceModel: BalanceModel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        balanceModel = BalanceModel.sharedInstance
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        balanceLabel.setText(balanceModel.getBalanceString())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

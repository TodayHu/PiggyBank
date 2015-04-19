//
//  GoalInterfaceController.swift
//  PiggyBank
//
//  Created by Daniel Lam on 20/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import Foundation

import WatchKit
import Foundation
import PiggyBankCommon

class GoalInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var donutChart: WKInterfaceImage!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        donutChart.startAnimatingWithImagesInRange(NSMakeRange(0, 70), duration: 1.0, repeatCount: 1)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}

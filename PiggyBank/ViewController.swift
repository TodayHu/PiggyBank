//
//  ViewController.swift
//  PiggyBank
//
//  Created by Daniel Lam on 13/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var piggybankIV: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = UIColor.whiteColor()

        piggybankIV = UIImageView(forAutoLayout: ())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


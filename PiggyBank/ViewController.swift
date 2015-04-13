//
//  ViewController.swift
//  PiggyBank
//
//  Created by Daniel Lam on 13/04/2015.
//  Copyright (c) 2015 Hungry Source Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let kImageWidth = CGFloat(300)
    private let kImageHeight = CGFloat(300)

    private var piggybankIV: UIImageView!

    // MARK: - Init
    
    convenience override init() {
        self.init(nibName: nil, bundle: nil)
        
        piggybankIV = UIImageView(forAutoLayout: ())
        piggybankIV.image = UIImage(named: "piggybank-640")

    }
    
    /// This initializer is always called by the system because it's the designated initializer.
    /// This must be defined to to prevent run time error:
    ///   fatal error: use of unimplemented initializer 'init(nibName:bundle:)' for class 'Flow.FlowViewController'
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    /// This initializer is only called if Storyboard is used.
    /// This needs to be defined to to prevent compile error:
    ///   'required' initializer 'init(coder:)' must be provided by subclass of 'UIViewController'
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    } 

    // MARK: - View Life Cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = UIColor.whiteColor()

        view.addSubview(piggybankIV)
        piggybankIV.autoAlignAxisToSuperviewAxis(.Vertical)
        piggybankIV.autoPinEdgeToSuperviewEdge(.Top, withInset: 20)
        piggybankIV.autoSetDimension(.Width, toSize: kImageWidth)
        piggybankIV.autoSetDimension(.Height, toSize: kImageHeight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


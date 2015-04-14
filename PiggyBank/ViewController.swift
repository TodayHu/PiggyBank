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
    private var buttonPlus = UIButton(forAutoLayout: ())!
    private var buttonMinus : UIButton!


    // MARK: - Init
    
    convenience override init() {
        self.init(nibName: nil, bundle: nil)
        
        piggybankIV = UIImageView(forAutoLayout: ())
        piggybankIV.image = UIImage(named: "piggybank-640")

        buttonPlus = ScreenUtil.sharedInstance.getButton()
        buttonPlus.setTitle("skipped coffee = saved $3", forState: .Normal)
        buttonPlus.addTarget(self, action: "buttonTappedThreeDollars:", forControlEvents: .TouchUpInside)

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

        view.backgroundColor = Style.colorPaleGreen // Style.colorLemonChiffon //Style.colorPaleGreen;

        view.addSubview(piggybankIV)
        piggybankIV.autoAlignAxisToSuperviewAxis(.Vertical)
        piggybankIV.autoPinEdgeToSuperviewEdge(.Top, withInset: 20)
        piggybankIV.autoSetDimension(.Width, toSize: kImageWidth)
        piggybankIV.autoSetDimension(.Height, toSize: kImageHeight)
        
        view.addSubview(buttonPlus)
        buttonPlus.autoPinEdge(.Top, toEdge: .Bottom, ofView: piggybankIV)
        buttonPlus.autoPinEdgeToSuperviewEdge(.Left, withInset: 50)
        buttonPlus.autoPinEdgeToSuperviewEdge(.Right, withInset: 50)
        buttonPlus.autoSetDimension(.Height, toSize: 60)
        buttonPlus.autoCenterInSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Button handler methods
    func buttonTappedThreeDollars(sender: UIButton!) {
        println("buttonTappedThreeDollars: started.")
    }

}


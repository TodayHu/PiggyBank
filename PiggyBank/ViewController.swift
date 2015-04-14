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

    private let kButtonMarginSide = CGFloat(20)
    private let kButtonHeight = CGFloat(70)
    private let kButtonGapBetween = CGFloat(10)

    private var piggybankIV: UIImageView!
    private var buttonAddThree = UIButton(forAutoLayout: ())!
    private var buttonAddFive = UIButton(forAutoLayout: ())!
    private var buttonSpend = UIButton(forAutoLayout: ())!


    // MARK: - Init
    
    convenience override init() {
        self.init(nibName: nil, bundle: nil)
        
        piggybankIV = UIImageView(forAutoLayout: ())
        piggybankIV.image = UIImage(named: "piggybank-640")

        buttonAddThree = ScreenUtil.sharedInstance.getButton()
        buttonAddThree.setTitle("skipped coffee = saved $3", forState: .Normal)
        buttonAddThree.addTarget(self, action: "buttonTappedThreeDollars:", forControlEvents: .TouchUpInside)

        buttonAddFive = ScreenUtil.sharedInstance.getButton()
        buttonAddFive.setTitle("had simple meal = saved $5", forState: .Normal)
        buttonAddFive.addTarget(self, action: "buttonTappedFiveDollars:", forControlEvents: .TouchUpInside)

        buttonSpend = ScreenUtil.sharedInstance.getButton()
        buttonSpend.backgroundColor = Style.colorLightCyan
        buttonSpend.setTitle("Spend the money!", forState: .Normal)
        buttonSpend.addTarget(self, action: "buttonTappedSpend:", forControlEvents: .TouchUpInside)
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
        piggybankIV.autoPinEdgeToSuperviewEdge(.Top, withInset: kButtonGapBetween)
        piggybankIV.autoSetDimension(.Width, toSize: kImageWidth)
        piggybankIV.autoSetDimension(.Height, toSize: kImageHeight)
        
        view.addSubview(buttonAddThree)
        buttonAddThree.autoPinEdge(.Top, toEdge: .Bottom, ofView: piggybankIV)
        buttonAddThree.autoPinEdgeToSuperviewEdge(.Left, withInset: kButtonMarginSide)
        buttonAddThree.autoPinEdgeToSuperviewEdge(.Right, withInset: kButtonMarginSide)
        buttonAddThree.autoSetDimension(.Height, toSize: kButtonHeight)

        view.addSubview(buttonAddFive)
        buttonAddFive.autoPinEdge(.Top, toEdge: .Bottom, ofView: buttonAddThree, withOffset: kButtonGapBetween)
        buttonAddFive.autoPinEdgeToSuperviewEdge(.Left, withInset: kButtonMarginSide)
        buttonAddFive.autoPinEdgeToSuperviewEdge(.Right, withInset: kButtonMarginSide)
        buttonAddFive.autoSetDimension(.Height, toSize: kButtonHeight)

        view.addSubview(buttonSpend)
        buttonSpend.autoPinEdge(.Top, toEdge: .Bottom, ofView: buttonAddFive, withOffset: kButtonGapBetween)
        buttonSpend.autoPinEdgeToSuperviewEdge(.Left, withInset: kButtonMarginSide)
        buttonSpend.autoPinEdgeToSuperviewEdge(.Right, withInset: kButtonMarginSide)
        buttonSpend.autoSetDimension(.Height, toSize: kButtonHeight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: - Button handler methods

    func buttonTappedThreeDollars(sender: UIButton!) {
        println("buttonTappedThreeDollars: started.")
    }

    func buttonTappedFiveDollars(sender: UIButton!) {
        println("buttonTappedFiveDollars: started.")
    }

    func buttonTappedSpend(sender: UIButton!) {
        println("buttonTappedSpend: started.")
    }
}


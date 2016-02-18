//
//  MainViewController.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController, SlideDownTransitionDelegate {
    
    @IBOutlet weak var iWantSproutsButton: UIButton!
    @IBOutlet weak var iAteSproutsButton: UIButton!
    
    var slideDownTransition = SlideDownTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
    }
    
    func layoutView() {
        guard let iWantSproutsLabel = iWantSproutsButton.titleLabel, iAteSproutsLabel = iAteSproutsButton.titleLabel else {
            return
        }
        iWantSproutsLabel.numberOfLines = 0
        iWantSproutsLabel.textAlignment = .Center
        
        iAteSproutsLabel.numberOfLines = 0
        iAteSproutsLabel.textAlignment = .Center
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnToMainMenu(segue: UIStoryboardSegue) {
    }
    
    @IBAction func swipedDown(sender: AnyObject) {
        performSegueWithIdentifier("iWantSprouts", sender: nil)
    }
    
    
    @IBAction func swipedUp(sender: AnyObject) {
        performSegueWithIdentifier("iAteSprouts", sender: nil)
    }
    
    func dismiss() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "iWantSprouts" {
            let iWantSproutsController = segue.destinationViewController as! IWantSproutsViewController
            iWantSproutsController.transitioningDelegate = self.slideDownTransition
        }
    }
    
    
}

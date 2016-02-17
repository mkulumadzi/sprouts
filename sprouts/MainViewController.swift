//
//  MainViewController.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    
    
    @IBOutlet weak var iWantSproutsButton: UIButton!
    @IBOutlet weak var iAteSproutsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView()
    }
    
    func layoutView() {
        guard let iWantSproutsLabel = iWantSproutsButton.titleLabel, iAteSproutsLabel = iAteSproutsButton.titleLabel else {
            return
        }
        iWantSproutsLabel.numberOfLines = 1
        iWantSproutsLabel.adjustsFontSizeToFitWidth = true
        
        iAteSproutsLabel.numberOfLines = 1
        iAteSproutsLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnToMainMenu(segue: UIStoryboardSegue) {
        
    }
    
    
}

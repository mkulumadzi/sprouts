//
//  ItemViewController.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var item:Item!
    var place:Place!
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func layoutView() {
        itemImage.image = item.image
        itemNameLabel.text = item.name
    }
    
    @IBAction func swipedRight(sender: AnyObject) {
        performSegueWithIdentifier("itemViewDismissed", sender: nil)
    }
    
}

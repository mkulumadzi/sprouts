//
//  IWantSproutsViewController.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import UIKit

class IWantSproutsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items:[Item]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeDemoData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Initializing demo data
    
    func initializeDemoData() {
        
        let item1 = Item(name: "Roasted Brussel Sprouts", image: nil)
        let item2 = Item(name: "Brussel Sprouts on Toast", image: nil)
        let item3 = Item(name: "Grilled Cheese", image: nil)
        let item4 = Item(name: "Pizza with Sprouts", image: nil)
        
        if let roastedImage = UIImage(named: "roasted_sprouts.jpg") {
            item1.image = roastedImage
        }
        if let toastImage = UIImage(named: "sprouts_on_toast.jpg") {
            item2.image = toastImage
        }
        if let grilledImage = UIImage(named: "grilled_cheese.jpg") {
            item3.image = grilledImage
        }
        if let pizzaImage = UIImage(named: "sprouts_on_pizza.jpg") {
            item4.image = pizzaImage
        }
        
        items = [item1, item2, item3, item4]
    }
    
    // MARK: Collection flow layout
    
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("itemCell", forIndexPath: indexPath) as! ItemCell
        
        if items.count > indexPath.row {
            let item = items[indexPath.row]
            cell.item = item
            cell.itemNameLabel.text = item.name
            if let image = item.image {
                cell.itemImage.image = image
            }
        }
    
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        //Assuming a margin of 10.0, and three columns
        let dimension = (view.frame.width - 6) / 2
        let size = CGSize(width: dimension, height: dimension)
        return size
    }
    
    
    //MARK: Selecting cells

    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        print("Cell selected")
    }
    
    //MARK: Other user actions
    
    
    @IBAction func swipedUp(sender: AnyObject) {
        print("Swiped!")
        performSegueWithIdentifier("backToMainMenu", sender: nil)
    }
    

}

class ItemCell: UICollectionViewCell {
    
    var item:Item!
    
    @IBOutlet weak var itemImage:UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
}



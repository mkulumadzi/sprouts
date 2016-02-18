//
//  IAteSproutsViewController.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import UIKit

class IAteSproutsViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    var places:[Place]!

    @IBOutlet weak var placesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeDemoData()
        placesTable.rowHeight = 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Initializing demo data
    
    func initializeDemoData() {
        
        let place1 = Place(name: "Heavenly Kitchen", details: "Get your sprouts three ways", image: nil)
        let place2 = Place(name: "Joe's Pizza", details: "Sprouts on pizza!", image: nil)
        let place3 = Place(name: "Park", details: "Fancy sprouts", image: nil)
        
        if let image = UIImage(named: "heavenly_kitchen.jpg") {
            place1.image = image
        }
        if let image = UIImage(named: "joes_pizza.jpg") {
            place2.image = image
        }
        if let image = UIImage(named: "park.jpg") {
            place3.image = image
        }

        
        places = [place1, place2, place3]
    }
    
    

    
    // MARK: Section configuration
    
    
    // MARK: Row configuration
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("placeCell") as! PlaceCell
        if places.count > indexPath.row {
            let place = places[indexPath.row]
            cell.place = place
            cell.placeName.text = place.name
            cell.placeDetails.text = place.details
            if let image = place.image {
                cell.placeImage.image = image
            }
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        print("Row tapped!")
    }
    
    @IBAction func swipedDown(sender: AnyObject) {
        performSegueWithIdentifier("backToMainMenu", sender: nil)
    }
    
}

class PlaceCell: UITableViewCell {
    
    var place:Place!
    
    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeDetails: UILabel!
    
}

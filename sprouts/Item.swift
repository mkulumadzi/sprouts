//
//  Item.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import Foundation
import UIKit

class Item: NSObject {
    
    var name:String!
    var place:Place!
    var image:UIImage?
    
    init(name: String, place: Place, image: UIImage?) {
        self.name = name
        self.place = place
        
        if let image = image {
            self.image = image
        }
        
        super.init()
    }
    
    
}
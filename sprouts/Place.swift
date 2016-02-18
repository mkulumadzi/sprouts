//
//  Place.swift
//  sprouts
//
//  Created by Evan Waters on 2/17/16.
//  Copyright © 2016 Evan Waters. All rights reserved.
//

import Foundation
import UIKit

class Place: NSObject {
    
    var name:String!
    var details:String!
    var image:UIImage?
    
    init(name: String, details: String, image: UIImage?) {
        self.name = name
        self.details = details
        
        if let image = image {
            self.image = image
        }
        
        super.init()
    }
    
    
}

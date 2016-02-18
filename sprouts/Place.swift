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
    var image:UIImage?
    
    init(name: String, image: UIImage?) {
        self.name = name
        
        if let image = image {
            self.image = image
        }
        
        super.init()
    }
    
    
}

//
//  Meal.swift
//  FoodTracker
//
//  Created by hiroshige negishi on 6/28/2559 BE.
//  Copyright © 2559 ARMS(THAILAND) Co., Ltd. All rights reserved.
//

import UIKit

class Meal {
    //Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rationg is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
}

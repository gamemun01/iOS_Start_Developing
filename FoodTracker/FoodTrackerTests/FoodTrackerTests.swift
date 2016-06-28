//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by hiroshige negishi on 6/22/2559 BE.
//  Copyright © 2559 ARMS(THAILAND) Co., Ltd. All rights reserved.
//
import UIKit
import XCTest

class FoodTrackerTests: XCTestCase {
   
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        // Bad rating
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative rating are invalid, be positive")
    }
    
}

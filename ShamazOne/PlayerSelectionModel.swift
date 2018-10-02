//
//  PlayerSelectionModel.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/30/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation

 var numbersArray = ["2","3","4","5","6","7","8","9","10"]

// var numbersArray = [1,2,3,4,5,6,7,8,9,10]


// function to display numbers in the next player nomination view

func showNumbers() -> Any {
    let numberShown = randomNomination()
    
    if numberShown == 0 {
        return "Game Over"
    }

    print("\(numberShown)")
    return numberShown
}

















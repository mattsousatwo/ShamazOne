//
//  PlayerSelectionModel.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/30/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation

 var numbersArray = ["1","2","3","4","5","6","7","8","9","10"]

// var numbersArray = [1,2,3,4,5,6,7,8,9,10]




// function to display numbers in the next player nomination view

func showNumbers() -> Int {
    var numberShown = randomNomination()
    for player in shownPlayers {
        if player == numberShown {
            switch numberShown {
            case player:
                while player == numberShown {
                print("\(numberShown) : checkingNumber")
                    numberShown = randomNomination()
                print("\(numberShown) -> checkedNumber")
                return numberShown
                }
                
            default:
                print("\(numberShown) -=> default")
                return numberShown
            }
        }
        else {
             print("\(numberShown) :|:|: elseCase ")
            return numberShown
        }
    }
    print("\(numberShown) ::: FirstCase ")
    return numberShown
}

















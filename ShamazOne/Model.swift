//
//  Model.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation
import GameKit

// future writing prompts to be displayed 8/26
let futureWrittingPrompt: [String] = ["How long will civilization last after your death?",
                                      "Where will you be in two weeks?",
                                      "Do you think we will find extraterrestrial life by 2050?",
                                      "Will we understand consciousness in your lifetime?",
                                      "Will America still have privatley owned prisons in 2030?",
                                      "What is the chance that humans will survive for another 500 years?",
                                      "Will humans destroy the planet in the next 500 years?",
                                      "Will humans colonize space in your childrens liftime?",
                                      "Will global warming still be a threat in 2030?" ]

// past writing prompts to be displayed 8/26
let pastWrittingPrompt: [String] = ["What did you do last summer?",
                                    "Where did you go on vacation last year?",
                                    "What did you do for your last birthday?",
                                    "What was the most difficult thing you had to do in the last 48 hours?",
                                    "What did you have for breakfast this morning?",
                                    "Who did you meet last week?",
                                    "What did you do over the last 24 hours?",
                                    "Did you have a computer before you were 10?",
                                    "How many hours were you on your computer for yesterday?",
                                    "Did you get scared by anyone yesterday? If so, how?",
                                    "What was your favortie sports team when you were 10?"]

// Universal String to store number selection  8/30
var savedNumber: Int = 0

// generates random string from futureWrittingPrompt 8/26
func displayFutureWrittingPrompt() -> String {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: futureWrittingPrompt.count)
    return futureWrittingPrompt[randomNumber]
}

// generates random string from pastWrittingPrompt 8/26
func displayPastWrittingPrompt() -> String {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: pastWrittingPrompt.count)
    return pastWrittingPrompt[randomNumber]
}

// converts string to Int 8/30
// catches string if == "Game Over" to then break out of func
func stringToInt(string: String) -> Int {
    switch string {
    case "Game Over":
        break
    default:
    let convert: Int? = Int(string)
    return convert!
}
    return 0
}

// player creates a new Array containing number of players
func newPlayersArray(upperBound: Int) -> [Int] {
    let newArray = Array(2...upperBound)
    return newArray
}

// array to store the selected number of players
var playerSourceArray: [Int] = []

// generates random number with an upperbound of selected players 8/30
func randomNomination() -> Int {
    if playerSourceArray.count == 0 {
        return 0
    }
    var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: playerSourceArray.count)
    for number in shownPlayers {
        while number == randomNumber {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: playerSourceArray.count)
        }
    }
    
    let chosenNumber = playerSourceArray[randomNumber]
   return chosenNumber
}

// array to store shown numbers in the nomination screen 9/22
var shownPlayers: [Int] = []


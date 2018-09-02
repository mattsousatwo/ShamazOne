//
//  Model.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation
import GameKit


// writting prompt arrays 8/26        ********** need to update promts to indicate a time frame

let futureWrittingPrompt: [String] = ["Does humanity have a future beyond Earth?",
                                      "Where will you be next month?",
                                      "Do you think we will find extraterrestrial life by 2050?",
                                      "Will we understand consciousness in your lifetime?",
                                      "Will brain science change criminal law?",
                                      "What is the chance that humans will survive for another 500 years?",
                                      "Will humans destroy the planet in the next 500 years?",
                                      "Will humans colonize space?",
                                      "Will we be able to predict natural disasters one day?" ]
let pastWrittingPrompt: [String] = ["What did you do last summer?",
                                    "Where did you go on your favorite vacation?",
                                    "What did you do for your last birthday?",
                                    "What was the last difficult thing you had to do?",
                                    "What was your last meal?",
                                    "Who did you meet last week?",
                                    "What did you do over the last 24 hours?",
                                    "What was your first TV like?",
                                    "What was your first Computer like?",
                                    "When was the last time you were shocked?",
                                    "What is your favortie sports team?"]

// Universal String to store number selection  8/30
var savedNumber = ""

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
func stringToInt(string: String) -> Int {
    let a: Int? = Int(string)
    return a!
}

//changing the string value of savedNumber to Int 8/30
var newNumber = stringToInt(string: savedNumber)

// generates random number with an upperbound of selected players 8/30
func randomNomination() -> Int {
    var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: newNumber)
    if randomNumber == 0 {
        randomNumber = 1
    }
    return randomNumber
    
}


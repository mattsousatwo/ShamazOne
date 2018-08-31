//
//  Model.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation
import GameKit

// struct for player information to be stored in 8/27
class Player {
    var name: String = ""
    var response: String = ""
                                            // 8/30   need to put in table view to use Player data otherwise we will get a warning 
    init(name: String, response: String) {
        self.name = name
        self.response = response
    }
    
    
}

// empty dictionary to hold player and response information 8/27
var players: [String: String] = ["": ""]


// arrays to store datat 8/28 
var names: [String] = []
var responses: [String] = []

// writting prompt arrays 8/26        ~ need to update promts to indicate a time frame 
let futureWrittingPrompt: [String] = ["Does humanity have a future beyond Earth?",
                                      "Where will you be next month?",
                                      "Where and when do you think we will find extraterrestrial life?",
                                      "Will we ever understand consciousness?",
                                      "Will brain science change criminal law?",
                                      "What is the chance that humans will survive for another 500 years?",
                                      "Will humans destroy the planet?",
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

//changing the string value of savedNumber to Int
var newNumber = stringToInt(string: savedNumber)

// generates random number with an upperbound of selected players
func randomNomination() -> Int {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: newNumber)
    return randomNumber
    
}


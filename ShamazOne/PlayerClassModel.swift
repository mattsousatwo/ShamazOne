//
//  PlayerClassModel.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 9/1/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation



// struct for player information to be stored in 8/27
class Player {
    var name: String = ""
    var response: String = ""
    var questionAsked: String = "" // - 9/1
    // 8/30   need to put in table view to use Player data otherwise we will get a warning
    init(name: String, response: String, questionAsked: String) {
        self.name = name
        self.response = response
        self.questionAsked = questionAsked
    }
    
    
}


// arrays to store data 8/28
var names: [String] = []
var responses: [String] = []



var playerData: [Player] = []





//
//  Model.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import Foundation
import GameKit

let futureWrittingPrompt = ["Where do you see yourself in 12 years?", "Where will you be next month?"]
let pastWrittingPrompt = ["What did you do last summer?","Where did you go on your favorite vacation?"]

func displayFutureWrittingPrompt() -> String {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: futureWrittingPrompt.count)
    return futureWrittingPrompt[randomNumber]
}

func displayPastWrittingPrompt() -> String {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: pastWrittingPrompt.count)
    return pastWrittingPrompt[randomNumber]
}

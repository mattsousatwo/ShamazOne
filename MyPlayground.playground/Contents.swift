//: Playground - noun: a place where people can play

import UIKit
import GameKit

let pastWrittingPrompt: [String] = ["What did you do last summer?","Where did you go on your favorite vacation?", "Where were you born"]

func displayPastWrittingPrompt() -> String {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: pastWrittingPrompt.count)
    return pastWrittingPrompt[randomNumber]
}

displayPastWrittingPrompt()
displayPastWrittingPrompt()

let name = displayPastWrittingPrompt()
name

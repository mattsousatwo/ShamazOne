//
//  NominationViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/28/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit

var removeNumber = Int()

class NominationViewController: UIViewController {

// Label that gives numberDisplay context 9/22
    @IBOutlet weak var nextPlayerPromptLabel: UILabel!
    
// Player nomination display - 8/30
    @IBOutlet weak var numberDisplay: UILabel!
    
// Next Button on screen 9/22
    @IBOutlet weak var nextResponseButton: UIButton!
    
// Quit Button on screen 9/22
    @IBOutlet weak var quitButton: UIButton!
    
// Quit Button Height Constraint 9/22
    @IBOutlet weak var quitHeightConstraint: NSLayoutConstraint!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

// displaying a random number inside the numberDisplay Label - 9/22
        numberDisplay.text = "\(showNumbers())"
        
// hiding next player button / expanding QuitButton & changing text / changing text of playerPromptLabel 9/22
        if numberDisplay.text == "Game Over" {
            nextPlayerPromptLabel.text = "Sorry but there are no more players"
            nextResponseButton.isHidden = true
            quitButton.setTitle("Results", for: .normal)
            quitHeightConstraint.constant = 120
            
            
        }
        

    // changing numberDisplay to an Int 9/20
        removeNumber = stringToInt(string: numberDisplay.text!)
        
    // loop to remove displayed Number from playerSourceArray and add to shownPlayers arrray  9/20
        for player in playerSourceArray {
            if removeNumber == player {
                
                let index = playerSourceArray.index(of: removeNumber)
                shownPlayers.append(playerSourceArray[index!])

                playerSourceArray.remove(at: index!)
            }
        }
        
// printing game info to console 9/222
        print("ShownPlayers ==== " + "\(shownPlayers)")
        print("PlayerSourceArray | | | | |   " + "\(playerSourceArray)")
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  NominationViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/28/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit



class NominationViewController: UIViewController {

// Label that gives numberDisplay context
    @IBOutlet weak var nextPlayerPromptLabel: UILabel!
    
// Player nomination display - 8/30
    @IBOutlet weak var numberDisplay: UILabel!
    
// Next Button on screen
    @IBOutlet weak var nextResponseButton: UIButton!
    
// Quit Button on screen
    @IBOutlet weak var quitButton: UIButton!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

// setting Player Nomination display to the value of the number of players from PlayerSelectionVC - 8/30
        numberDisplay.text = "\(randomNomination())"
        
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

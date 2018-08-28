//
//  ViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
// dismiss function from responseViewController 8/26
    @IBAction func returnToVC(sender: UIStoryboardSegue) {}
    
// past button 8/26
    @IBAction func pastButton(_ sender: Any) {}
       
    
// sending random writting prompt to temporary String holder in ResponseViewController promptString depending upon which segue is triggered. 8/27
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pastSegue" {
            let vc = segue.destination as! ResponseViewController
            let pastPrompt = displayPastWrittingPrompt()
            vc.promptString = pastPrompt
            
        } else if segue.identifier == "futureSegue" {
            
            let vc = segue.destination as! ResponseViewController
            let futurePrompt = displayFutureWrittingPrompt()
            vc.promptString = futurePrompt
        }
    }
    
    
// future button 8/26
    @IBAction func futureButton(_ sender: Any) {}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


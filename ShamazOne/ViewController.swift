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
    
// past button 8/26
    @IBAction func pastButton(_ sender: Any) {}
       
    
// sending random writting prompt to temporary String holder in ResponseViewController promptString depending upon which segue is triggered. 8/27
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pastSegue" {
            let nextVC = segue.destination as! ResponseViewController
            let pastPrompt = displayPastWrittingPrompt()
            nextVC.promptString = pastPrompt
            
        } else if segue.identifier == "futureSegue" {
            
            let nextVC2 = segue.destination as! ResponseViewController
            let futurePrompt = displayFutureWrittingPrompt()
            nextVC2.promptString = futurePrompt
        }
    }
    
    
// future button 8/26
    @IBAction func futureButton(_ sender: Any) {}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


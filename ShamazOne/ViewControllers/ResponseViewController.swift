//
//  ResponseViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/26/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit

class ResponseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

// temp String == Labels text 8/27
        promptDisplay.text = promptString
        
        // Do any additional setup after loading the view.
    }
    
// label to display writting prompt depending on past/future 8/26
    @IBOutlet weak var promptDisplay: UILabel!
    
// created a temporary string to hold data being passed between ViewControllers 8/27
    var promptString: String = ""
    
// textField for user to input name 8/27
    @IBOutlet weak var nameField: UITextField!
    
    
// text field for user to input data 8/26
    @IBOutlet weak var responseEditor: UITextField!
    
// text field for user to input data 8/30
    @IBOutlet weak var responseField: UITextView!
    
    
// submit button - used for storeing user name and response 8/27
    @IBAction func submit(_ sender: Any) {
    }
    
    
        // needs to commit
// method to segue to nomination view only if nameField and responseEditor are not empty 8/29
    // ---------prevents backButton dissmiss to main vc aswell 8/29
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if nameField.text! == "" || responseField.text! == "" {
            nameField.text = "Enter a name and response"
            return false
        }
        
        
        
        
        
// storing all of the users information being input into playerData
        let newResponse = Player(name: nameField.text!, response: responseField.text!, questionAsked: promptDisplay.text!)
        
        playerData.append(newResponse)
        

        return true
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

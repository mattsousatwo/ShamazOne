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

    
    
    
    
// submit button - used for storeing user name and response 8/27
    @IBAction func submit(_ sender: Any) {
        if nameField.text != "" && responseEditor.text != "" {
            let storedName = nameField.text!
            let storedResponse = responseEditor.text!
            
// ------- Doesnt Work! says players is [String?: String?] --------- 8/27
            names.append(storedName) // 8/28
            responses.append(storedResponse) // 8/28
        
            // needs to update data to be stored 8/27
            
            nameField.text = "" // 8/28
            responseEditor.text = "" // 8/28
            
            performSegue(withIdentifier: "goToNomination", sender: submit(self)) // 8/28
            
        } else {
            
             nameField.text = "Enter a name and response." // 8/28
            
        }
        
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

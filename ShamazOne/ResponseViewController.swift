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

        // Do any additional setup after loading the view.
    }

    
// label to display writting prompt depending on past/future
    @IBOutlet weak var promptDisplay: UILabel!
    
// text field for user to input data
    @IBOutlet weak var responseEditor: UITextField!
    
    
    
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

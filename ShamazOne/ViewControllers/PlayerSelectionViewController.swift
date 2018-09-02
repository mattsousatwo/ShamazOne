//
//  PlayerSelectionViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 8/30/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit


class PlayerSelectionViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        startButton.isHidden = true
    }

    
// picker View 8/30
    @IBOutlet weak var pickerView: UIPickerView!
    
// Dissmiss func 8/30
    @IBAction func goToInitailView(sender: UIStoryboardSegue) {}
    
 // label to display selected number
    @IBOutlet weak var numberDisplay: UILabel!
    
// start button
    @IBOutlet weak var startButton: UIButton!
    
    
    
// https://www.youtube.com/watch?v=tGr7qsKGkzY PickerVIew video  8/30
    
// number of Components in Picker - how many columns 8/30
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
// the title to be used as the title for the row in picker 8/30
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numbersArray[row]
    }
    
// number of rows in picker 8/30
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbersArray.count
    }   
    
// selecting a row 8/30
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numberDisplay.text = numbersArray[row]
        savedNumber = numberDisplay.text!
        startButton.isHidden = false
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

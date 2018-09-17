//
//  ResultsTableViewController.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 9/1/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

// Displaying number of sections  9/1
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
// Displaying number of rows in tableView to number of elements in playerData array 9/1
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        if section == 0 {
            return playerData.count
        } else {
        return 0
        }
    }
    
// creating reusable cell 9/1
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "responseDisplay", for: indexPath)
    

        
            let playerResponseDisplay = playerData[indexPath.row]
        
        
            cell.textLabel?.text = playerResponseDisplay.name
            cell.detailTextLabel?.text = "\(playerResponseDisplay.questionAsked) - \(playerResponseDisplay.response)"
        
        
        return cell
    }
    

  
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

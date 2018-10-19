//
//  ResultsPage.swift
//  ShamazOne
//
//  Created by Matthew Sousa on 9/17/18.
//  Copyright © 2018 Matthew Sousa. All rights reserved.
//

import UIKit

class ResultsPage: UIViewController , UITableViewDelegate , UITableViewDataSource  {
    
// removing all player data for next game  9/21
    @IBAction func playAgainButton(_ sender: Any) {
        playerData.removeAll()
        playerSourceArray.removeAll()
        shownPlayers.removeAll()
        
    // printing game info to console
        print("\(playerData)" + "\(playerSourceArray)" + "\(shownPlayers)")
        
    }
    
// tableView Outlet
    @IBOutlet weak var resultsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
// regestering a cell to be reused 9/17
        resultsTableView.register(UINib.init(nibName: "ResultsTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultsTableViewCell")
        
        resultsTableView.delegate = self
        resultsTableView.dataSource = self
        
    // estimated height for each row will be 60 points
        resultsTableView.estimatedRowHeight = 60
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- UITableView Datsource
    
// how many rows are in the table view 9/17
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return playerData.count
        } else {
            return 0
        }
    }

// tableViewCell Contencts 9/17
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    // naming a cell to use 9/17
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsTableViewCell", for: indexPath) as! ResultsTableViewCell
        
    // adding user data to the cells labels 9/17
        
        let playerCell = playerData[indexPath.row]
        
        cell.labelTitle.text = playerCell.name
        
        cell.questionLabel.text = playerCell.questionAsked
        
        cell.answerLabel.text = playerCell.response
        
        return cell
    }
    
// setting the height for each row 9/17
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
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

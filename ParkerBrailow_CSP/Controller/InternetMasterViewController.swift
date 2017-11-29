//
//  The Internet.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 10/26/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{
    
    private (set) lazy var internetTopics: [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private var detailViewController: InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self,clearsSelectionOnViewWillAppear = false
    }
    
    //MARK: - Table viewdata source
    
    override public func numberOfSections(in tableView: UITableView) ->Int
    {
        // #warning Incomplete implementation, return the number of the sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: IndexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
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

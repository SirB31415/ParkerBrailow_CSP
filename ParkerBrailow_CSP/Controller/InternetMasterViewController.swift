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
    
    private lazy var addresses : [String] = []
    
    private func setup() -> Void
    {
        addresses = [
            "https://apstudent.collegeboard.org/apcourse/ap-computer-science-principles",
            "http://www.canyonsdistrict.org",
            "https://ctec.canyonsdistrict.org",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309",
            "https://twitter.com"]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK: handlethe internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow
            {
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0
                {
                    //TODO: replace with your definitions
                    pageText = "All the definitions you wrote....."
                }
                else
                {
                    pageText = internetTopics[indexPath.row]
                    
                }
                let controller = segue.destination as! InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
}

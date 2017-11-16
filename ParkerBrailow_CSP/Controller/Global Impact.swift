//
//  Global Impact.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 10/26/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

class Global_Impact: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var AddressProblem: UILabel!
    private func setup() -> Void
    {
        AddressProblem.text = "Global warming is currently going to"
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

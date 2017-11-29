//
//  InternetDetailViewController.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 11/29/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private func setup() -> Void
    {
        
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

//
//  ProgrammingViewController.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 12/13/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit
import SpriteKit

class ProgrammingViewController: UIViewController
{
    //MARK: UI Components
    
    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }

}

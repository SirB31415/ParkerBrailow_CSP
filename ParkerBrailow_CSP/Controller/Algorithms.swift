//
//  Algorithms.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 10/26/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

class Algorithms: UIViewController {
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: - Algorithm definition
        let algorithm :String = "These are instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, create a project in eclipse."
        let stepTwo :String = "Second, create a github repository of the eclipse project."
        let stepThree :String = "Third, create a package in eclipse titled controller in the src folder."
        let stepFour :String = "Fourth, create a package in eclipse titled model in the src folder."
        let stepFive :String = "Fifth, create a class inside of the eclipse project controller package called runner."
        let stepSix :String = "Sixth, create a class inside of the eclipse project controller package called controller."
        let stepSeven :String = "Seven, create a class inside of the eclipse project model package titled the same name as the project."
        
        //TODO: Finish adding all steps to the Algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = ";)"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
    
        return paragraphStyle
    }
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
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
    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
}

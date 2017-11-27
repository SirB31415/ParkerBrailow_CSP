//
//  Abstraction.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 10/26/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import UIKit

public class Abstraction: UIPageViewController, UIPageViewControllerDataSource
{
    
    //Mark: Array of subviews
    private (set) lazy var orderedAbstractionViews  : [UIViewController] =
    {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
        ]
    }()
    
    //Helper method to retrieve the correct ViewController
    private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first
        {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }

    //Mark:- Required Protocol methods for UIPageViewController
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) ->UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
     
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return nil
        }
        return orderedAbstractionViews[previousIndex]
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

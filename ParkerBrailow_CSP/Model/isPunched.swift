//
//  isPunched.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 11/20/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import Foundation

public  class notTrump : Punchable
{
    public var punchState : Bool
    
    public init()
    {
        self.punchState = false
    }
    public func punch() -> Void
    {
        print("Owch")
        punchState = true
    }
    public func isPunched() -> Bool
    {
        if(punchState)
        {
            print ("punched")
        }
        else
        {
            print ("I'm good")
        }
        return punchState
    }
}

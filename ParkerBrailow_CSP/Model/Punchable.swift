//
//  Punchable.swift
//  ParkerBrailow_CSP
//
//  Created by Brailow, Parker on 11/20/17.
//  Copyright © 2017 Brailow Inc. All rights reserved.
//

import Foundation

public protocol Punchable
{
    var punchState : Bool {get set}
    func punch() -> Void
    func isPunched() -> Bool
}

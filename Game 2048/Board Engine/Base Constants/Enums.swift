//
//  Enums.swift
//  Game 2048
//
//  Created by Alexander Danilin on 07/10/2017.
//  Copyright © 2017 Alexander Danilin. All rights reserved.
//

import Foundation

/// Movement orientation
enum Orientation {
    
    case vertical
    case horizon
}

/// Movement direction
enum Direction: Int {
    
    case forward = 1
    case backward = -1
}

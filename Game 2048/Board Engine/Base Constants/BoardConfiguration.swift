//
//  BoardConfiguration.swift
//  Game 2048
//
//  Created by Alexander Danilin on 07/10/2017.
//  Copyright © 2017 Alexander Danilin. All rights reserved.
//  Board Configurations

import Foundation
import UIKit

struct BoardConfiguration {
    
    let tileNumber = 4
    let tileCount  = 16
    let boardSize   = CGSize(width: 290, height: 290)
    let tileSize    = CGSize(width: 60, height: 60)
    let borderSize  = CGSize(width: 10, height: 10)
}

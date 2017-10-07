//
//  Position.swift
//  Game 2048
//
//  Created by Alexander Danilin on 07/10/2017.
//  Copyright © 2017 Alexander Danilin. All rights reserved.
//  Position of tiles in the board

import Foundation

struct Position : Equatable {
    
    let x : Int
    let y : Int
    
    /// Find previouse position according to the direction and orientation
    func previousPosition(direction:Direction, orientation:Orientation) -> Position {
        switch orientation {
        case .vertical:
            return Position(x: x, y: y - direction.rawValue)
        case .horizon:
            return Position(x: x - direction.rawValue, y: y)
        }
    }
}

func ==(lhs: Position, rhs: Position) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

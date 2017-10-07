//
//  Style.swift
//  Game 2048
//
//  Created by Alexander Danilin on 07/10/2017.
//  Copyright © 2017 Alexander Danilin. All rights reserved.
//  Style configuration of the game

import Foundation
import UIKit

struct Styles {
    
    let boardBackgroundColor     =  UIColor(red: 0.6823529412, green: 0.6235294118, blue: 0.5607843137, alpha: 1)
    let emptyTileBackgroundColor =  UIColor(red: 0.7607843137, green: 0.7058823529, blue: 0.6392156863, alpha: 1)
    let tileForgroundColors      = [UIColor(red: 0.3882352941, green: 0.3647058824, blue: 0.3176470588, alpha: 1),
                                    UIColor.white]
    let tileBackgroundColors     = [UIColor(red: 0.7529411765, green: 0.7098039216, blue: 0.6509803922, alpha: 1),
                                    UIColor(red: 0.9254901961, green: 0.8745098039, blue: 0.8196078431, alpha: 1),
                                    UIColor(red: 0.9098039216, green: 0.8549019608, blue: 0.7490196078, alpha: 1),
                                    UIColor(red: 0.9333333333, green: 0.6392156863, blue: 0.3960784314, alpha: 1),
                                    UIColor(red: 0.9019607843, green: 0.4784313725, blue: 0.262745098, alpha: 1),
                                    UIColor(red: 0.9764705882, green: 0.3843137255, blue: 0.2980392157, alpha: 1),
                                    UIColor(red: 0.8901960784, green: 0.2549019608, blue: 0.1764705882, alpha: 1),
                                    UIColor(red: 0.9450980392, green: 0.8235294118, blue: 0.3568627451, alpha: 1),
                                    UIColor(red: 0.9333333333, green: 0.7921568627, blue: 0.231372549, alpha: 1),
                                    UIColor(red: 0.8745098039, green: 0.7137254902, blue: 0.1333333333, alpha: 1),
                                    UIColor(red: 0.9137254902, green: 0.7333333333, blue: 0.1921568627, alpha: 1),
                                    UIColor(red: 0.9098039216, green: 0.737254902, blue: 0.03921568627, alpha: 1)]
    
    /// Tile background color according to the value of the tile
    func tileBackgroundColor(value:Int) -> CGColor {
        return value < tileBackgroundColors.count ? tileBackgroundColors[value].cgColor : tileBackgroundColors.last!.cgColor
    }
    
    /// Tile text color according to the value of the tile
    func tileForgroundColor(value:Int) -> UIColor {
        return tileForgroundColors[value > 2 ? 1 : 0]
    }
}


//
//  ViewController.swift
//  Game 2048
//
//  Created by Alexander Danilin on 07/10/2017.
//  Copyright © 2017 Alexander Danilin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    let board = Board()
    
    @IBAction func swipe(recognizer:UIGestureRecognizer?) {
        guard let recognizer = recognizer as? UISwipeGestureRecognizer else {
            return
        }
        switch recognizer.direction {
        case UISwipeGestureRecognizerDirection.right:
            board.moveTile(direction: .forward, orientation: .horizon)
        case UISwipeGestureRecognizerDirection.left:
            board.moveTile(direction: .backward, orientation: .horizon)
        case UISwipeGestureRecognizerDirection.up:
            board.moveTile(direction: .backward, orientation: .vertical)
        case UISwipeGestureRecognizerDirection.down:
            board.moveTile(direction: .forward, orientation: .vertical)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        if let view = self.view {
            view.backgroundColor = UIColor(white: 1.0, alpha: 1)
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            for direction : UISwipeGestureRecognizerDirection in [.left, .right, .up, .down] {
                let gesture = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
                gesture.direction = direction
                view.addGestureRecognizer(gesture)
            }
            
            board.addTo(view: view)
            board.buildBoard()
        }
    }
}


//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Shane Walsh on 06/12/2018.
//  Copyright © 2018 Shane Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // noughts = 1, crosses = 2

    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0,]  // 0 - empty, 1 - noughts, 2 - crosses
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let activePosition = (sender as AnyObject).tag - 1
        
        if gameState[activePosition] == 0 {
            
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                
                 (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
                
                 activePlayer = 2
                
            } else {
                
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
                
                activePlayer = 1
            }
        }
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


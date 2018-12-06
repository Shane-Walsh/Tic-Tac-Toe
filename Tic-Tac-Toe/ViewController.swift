//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Shane Walsh on 06/12/2018.
//  Copyright © 2018 Shane Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    // noughts = 1, crosses = 2

    var activePlayer = 1
    
    var activeGame = true
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0,]  // 0 - empty, 1 - noughts, 2 - crosses
    
    let winningCombinantions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let activePosition = (sender as AnyObject).tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                
                 (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
                
                 activePlayer = 2
                
            } else {
                
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
                
                activePlayer = 1
            }
            
            for combination in winningCombinantions {
                
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    // We have a winner
                    
                    activeGame = false
                    
                    print(gameState[combination[0]])
                    
                }
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


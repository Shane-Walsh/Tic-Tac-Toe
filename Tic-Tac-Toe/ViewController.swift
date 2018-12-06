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
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if activePlayer == 1 {
            
             (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
            
             activePlayer = 2
            
        } else {
            
            (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
            
            activePlayer = 1
        }
        
       
        
        print((sender as AnyObject).tag)
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


//
//  ViewController.swift
//  Shamaz
//
//  Created by Carl Wainwright on 23/04/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let myPTime = ShamazModelView.pTime
    let noPlayers = ShamazModelView.nPlayers
    
    
    @IBOutlet weak var pastFuturePrompt: UILabel!
    
    @IBAction func pastPrompt(_ sender: UIButton) {
        
        
        
        //Change text in 'pastFuturePromt' to random past time
//


        
        pastFuturePrompt.text = "Describe what your day was like \(myPTime) ago, with as much detail as you can remember"
        
    }
    

    
    @IBAction func futurePrompt(_ sender: UIButton) {

        
        pastFuturePrompt.text = "Describe what you would like to be doing in \(myPTime), with as much detail as you can share."
        
    }

    @IBAction func nextPlayer(_ sender: UIButton)
     {
        
        pastFuturePrompt.text = "Please pass the phone to Player number \(noPlayers)"


    }
}


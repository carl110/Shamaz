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

    func pTime() -> String{
        
        //List of times used for Past and Future Prompts
        let time = ["1 day", "2 days", "3 days", "4 days" ,"5 days", "1 week", "2 weeks", "3 weeks", "1 month", "2 months", "3 months", "6 months", "1 year", "2 years", "3 years"]
        
        //Generate random time scale from 'time' list
        let randomTimeIndex = Int(arc4random_uniform(UInt32(time.count)))
        let randomTime = time[randomTimeIndex]
        
        let myResults: String = "\(randomTime)"
        return myResults
    }
    
    lazy var myPTime = pTime()
    
    func nPlayers () -> String {
        
        //List of numbers for Players
        let player = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
        
        //Generate random number for next Player
        let randomPlayerIndex = Int(arc4random_uniform(UInt32(player.count)))
        let randomPlayer = player[randomPlayerIndex]
        
        let Results: String = "\(randomPlayer)"
        return Results
    }
    
lazy var noPlayers = nPlayers ()
    

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


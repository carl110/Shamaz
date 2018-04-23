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

    //List of times used for Past and Future Prompts
        let time = ["1 day", "2 days", "3 days", "4 days" ,"5 days", "1 week", "2 weeks", "3 weeks", "1 month", "2 months", "3 months", "6 months", "1 year", "2 years", "3 years"]
    
    //List of numbers for Players
        let player = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    @IBOutlet weak var pastFuturePrompt: UILabel!
    
    @IBAction func pastPrompt(_ sender: UIButton) {
     
        //Generate random time scale from 'time' list
        let randomTimeIndex = Int(arc4random_uniform(UInt32(time.count)))
        let randomTime = time[randomTimeIndex]
        
        //Change text in 'pastFuturePromt' to random past time
        let pastPrompt = "Describe what your day was like" + " " + randomTime + " ago, with as much detail as you can remember"
        
        pastFuturePrompt.text = pastPrompt
        
    }
    
    @IBAction func futurePrompt(_ sender: UIButton) {
        
        //Generate random time scale from 'time' list
        let randomTimeIndex = Int(arc4random_uniform(UInt32(time.count)))
        let randomTime = time[randomTimeIndex]
        
        //Change text in 'pastFuturePromt' to random past time
        let futurePrompt = "Describe what you would like to be doing in" + " " + randomTime + ", with as much detail as you can share."
        
        pastFuturePrompt.text = futurePrompt
    }
    
    @IBAction func nextPlayer(_ sender: UIButton) {
        
        //Generate random number for next Player
        let randomPlayerIndex = Int(arc4random_uniform(UInt32(player.count)))
        let randomPlayer = player[randomPlayerIndex]
        
        //Change text in 'pastFuturePromt' to show random Player number
        let playerPrompt = "Please pass the phone to Player number " + randomPlayer
        
        pastFuturePrompt.text = playerPrompt
    }
}


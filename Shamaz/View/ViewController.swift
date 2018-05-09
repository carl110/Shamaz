//
//  ViewController.swift
//  Shamaz
//
//  Created by Carl Wainwright on 23/04/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let model = ShamazViewModel()
    
    
    @IBOutlet weak var what: UILabel!
    @IBOutlet weak var pastPrompt: UIButton!
    @IBOutlet weak var futurePrompt: UIButton!
    @IBOutlet weak var pastFuturePrompt: UILabel!
    @IBOutlet weak var nextPlayer: UIButton!

    @IBAction func pastPrompt(_ sender: UIButton)
    {
        //Change text in 'pastFuturePromt' to random past time
        pastFuturePrompt.text = "Describe what your day was like \(model.pTime()) ago, with as much detail as you can remember"
        nextPlayer.isEnabled = true
        pastPrompt.isEnabled = false
        futurePrompt.isEnabled = false
        nextPlayer.alpha = 1
        futurePrompt.alpha = 0.17
    }
    @IBAction func futurePrompt(_ sender: UIButton)
    {
        pastFuturePrompt.text = "Describe what you would like to be doing in \(model.pTime()), with as much detail as you can share"
        nextPlayer.isEnabled = true
        pastPrompt.isEnabled = false
        futurePrompt.isEnabled = false
        nextPlayer.alpha = 1
        pastPrompt.alpha = 0.17
    }
    @IBAction func nextPlayer(_ sender: UIButton)
     {
        pastFuturePrompt.text = "Please pass the phone to Player number \(model.nPlayers())"
        nextPlayer.isEnabled = false
        pastPrompt.isEnabled = true
        futurePrompt.isEnabled = true
        nextPlayer.alpha = 0.17
        pastPrompt.alpha = 1
        futurePrompt.alpha = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Use setRadius to round button corners
        nextPlayer.setRadius(radius: 30)
   
        //Center text using extension
        nextPlayer.centerTextHorizontally(spacing: 10)
        
        nextPlayer.isEnabled = false
        nextPlayer.alpha = 0.17
      
 }
    
    override func viewDidAppear(_ animated: Bool) {
        //Use roundCorners extension to round button corners
        what.roundCorners(for: [.topLeft, .topRight], cornerRadius: 8)
        pastPrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
        futurePrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
        
        

    }
    
    
    override func viewDidLayoutSubviews() {

        
        //Set bound size of button to fit text in 1 line without truncating
        nextPlayer.bounds.size.width = 150
        
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
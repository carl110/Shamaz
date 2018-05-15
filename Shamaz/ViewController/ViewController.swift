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
    let pName = PlayerInputView()
    var nameArray: [String] = []

    @IBOutlet weak var what: UILabel!
    @IBOutlet weak var pastPrompt: UIButton!
    @IBOutlet weak var futurePrompt: UIButton!
    @IBOutlet weak var pastFuturePrompt: UILabel!
    @IBOutlet weak var nextPlayer: UIButton!

    @IBAction func pastPrompt(_ sender: UIButton)
    {
        //Change text in 'pastFuturePromt' to random past time
        pastFuturePrompt.text = "Describe what your day was like \(model.pTime()) ago, with as much detail as you can remember"
        nextPlayer.enableButton()
        pastPrompt.chosenButton()
        futurePrompt.disableButton()
    }
    @IBAction func futurePrompt(_ sender: UIButton)
    {
        pastFuturePrompt.text = "Describe what you would like to be doing in \(model.pTime()), with as much detail as you can share"
        nextPlayer.enableButton()
        pastPrompt.disableButton()
        futurePrompt.chosenButton()
        
    }
    @IBAction func nextPlayer(_ sender: UIButton)
     {
        if nameArray.isEmpty {
            pastFuturePrompt.text = "All players have had a go"
        }
        else {
        let randomPlayerIndex = Int(arc4random_uniform(UInt32(nameArray.count)))
        let randomPlayer = nameArray[randomPlayerIndex]

        pastFuturePrompt.text = "Please pass the phone to Player number \(randomPlayer)"
        
        nameArray.removeLast(randomPlayerIndex)
        }
        nextPlayer.disableButton()
        pastPrompt.enableButton()
        futurePrompt.enableButton()

        
        print(nameArray)

//        print (self.nameArray)
//        print(nameArray.count)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Use setRadius to round button corners
        nextPlayer.setRadius(radius: 30)
   
        //Center text using extension
        nextPlayer.centerTextHorizontally(spacing: 10)
        
        nextPlayer.disableButton()
        nextPlayer.titleLabel?.numberOfLines = 1

 }
    
    override func viewWillAppear(_ animated: Bool) {
        
        DispatchQueue.main.async {
            //Use roundCorners extension to round button corners
            self.what.roundCorners(for: [.topLeft, .topRight], cornerRadius: 8)
            self.pastPrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
            self.futurePrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
            
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

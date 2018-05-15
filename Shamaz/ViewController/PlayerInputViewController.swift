//
//  PlayerInputView.swift
//  Shamaz
//
//  Created by Carl Wainwright on 09/05/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit

class PlayerInputView: UIViewController {
 
    var nameText = ""
    var playerNumber = 0
    var inputNameArray: [String] = []
    
    @IBOutlet weak var playerList: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var addPlayer: UIButton!
    @IBOutlet weak var startGame: UIButton!
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goToMain"{
//            var nameArray = segue.destination as! ViewController
//            nameArray = self.inputNameArray
//        }
//    }
//    

    
    @IBAction func nameInput(_ sender: UITextField) {
    }
    
    @IBAction func addPlayer(_ sender: UIButton) {
        
        //Add player number to player name
        playerNumber += 1
        
        //Append name to previouse name on UILabel
        nameText = nameInput.text!
        playerList.text = (playerList.text ?? "") + "\(playerNumber). \(nameText)\n"

        
        //add names entered into textField into an array
        inputNameArray.append(nameInput.text!)
        
        //CLEARS THE TEXT FIELD ONCE BUTTON IS PUSHED
        nameInput.text = ""
        
       /* for name in array {
            print(name)
        }*/
      
        print(inputNameArray.count)
        
        print(inputNameArray)
        
//        let Result: Array = inputNameArray
        
    }
    
    
    @IBAction func startGame(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        startGame.setRadius(radius: 8)
        addPlayer.setRadius(radius: 8)
        
        
    }
}


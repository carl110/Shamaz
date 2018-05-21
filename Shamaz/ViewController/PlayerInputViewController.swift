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
    
    @IBAction func nameInput(_ sender: UITextField) {
    }
    
    @IBAction func addPlayer(_ sender: UIButton) {
        
        //Add player number to player name
        playerNumber += 1
        
        //Append name to previouse name on UILabel
        nameText = nameInput.text!
        playerList.text = (playerList.text ?? "") + "\n\(playerNumber). \(nameText)"

        //add names entered into textField into an array
        inputNameArray.append(nameInput.text!)
        
        //CLEARS THE TEXT FIELD ONCE BUTTON IS PUSHED
        nameInput.text = ""
        
    }
    
    @IBAction func startGame(_ sender: UIButton) {
    }
    
    //allows inputNameArray to be read on ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMain"{
            let vc = segue.destination as! ViewController
            vc.nameArray = self.inputNameArray
            
        }
    }
    override func viewDidLoad() {
        startGame.setRadius(radius: 8)
        addPlayer.setRadius(radius: 8)
    }
}


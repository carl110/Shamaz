//
//  PlayerInputView.swift
//  Shamaz
//
//  Created by Carl Wainwright on 09/05/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit

class PlayerInputView: UIViewController {
 
    @IBOutlet weak var playerList: UILabel!
    @IBOutlet weak var nameInput: UITextField!

    var nameText = ""
    var playerNumber = 0
    
    @IBAction func nameInput(_ sender: UITextField) {
    }
    
    @IBAction func addPlayer(_ sender: UIButton) {
        
        playerNumber += 1
        nameText = nameInput.text!
        playerList.text = (playerList.text ?? "") + "\(playerNumber). \(nameText)\n"
        
    }
    
    @IBAction func startGame(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        
    }
}


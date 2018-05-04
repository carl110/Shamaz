//
//  ViewController.swift
//  Shamaz
//
//  Created by Carl Wainwright on 23/04/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit





extension UIView {

    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var pastPrompt: UIButton!

    

    
    
    @IBOutlet weak var pastFuturePrompt: UILabel!
    
    @IBAction func pastPrompt(_ sender: UIButton) {
        
        
        
        //Change text in 'pastFuturePromt' to random past time
//


        
        pastFuturePrompt.text = "Describe what your day was like \(ShamazModelView().myPTime) ago, with as much detail as you can remember"
        
    }
    

    
    @IBAction func futurePrompt(_ sender: UIButton) {

       
        pastFuturePrompt.text = "Describe what you would like to be doing in \(ShamazModelView().myPTime), with as much detail as you can share."
        
    }

    @IBAction func nextPlayer(_ sender: UIButton)
     {

        pastFuturePrompt.text = "Please pass the phone to Player number \(ShamazModelView().noPlayers)"
        
        view.roundCorners([.topLeft, .topRight, .bottomRight], radius: 6)

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


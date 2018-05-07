//
//  ViewController.swift
//  Shamaz
//
//  Created by Carl Wainwright on 23/04/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import UIKit





extension UIView {
    
    func roundCorners(for corners: UIRectCorner, cornerRadius: CGFloat)
    {
        let path = UIBezierPath(roundedRect: self.bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
    }


    
    func setRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius ;
        self.layer.masksToBounds = true;
        
    }
}

extension UIButton {
    func centerTextHorizontally(spacing: CGFloat) {
        titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
        
    }
}

class ViewController: UIViewController {
    
    let model = ShamazModelView()
    

    @IBOutlet weak var what: UILabel!
    @IBOutlet weak var pastFuturePrompt: UILabel!
    
    
    @IBOutlet weak var pastPrompt: UIButton!
    @IBAction func pastPrompt(_ sender: UIButton)
    {
        //Change text in 'pastFuturePromt' to random past time
        pastFuturePrompt.text = "Describe what your day was like \(model.myPTime) ago, with as much detail as you can remember"
    }
    

    @IBOutlet weak var futurePrompt: UIButton!
    @IBAction func futurePrompt(_ sender: UIButton)
    {
        pastFuturePrompt.text = "Describe what you would like to be doing in \(model.myPTime), with as much detail as you can share."
    }

    @IBOutlet weak var nextPlayer: UIButton!
    @IBAction func nextPlayer(_ sender: UIButton)
     {
        pastFuturePrompt.text = "Please pass the phone to Player number \(model.noPlayers)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //call string from ShamazModelView
        model.temp()
        model.tempPlayer()
        
        //Use setRadius to round button corners
        nextPlayer.setRadius(radius: 30)
        
        //Use roundCorners extension to round button corners

        pastPrompt.roundCorners(for: [.bottomLeft,], cornerRadius: 8)
        what.roundCorners(for: [.topRight, .topLeft], cornerRadius: 8)
   
        //Center text using extension
        nextPlayer.centerTextHorizontally(spacing: 10)

       // nextPlayer.titleLabel?.numberOfLines = 1
        
        
 }
    
    override func viewDidLayoutSubviews() {
        
        //Use roundCorners extension to round button corners
        what.roundCorners(for: [.topLeft, .topRight], cornerRadius: 8)
        pastPrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
        futurePrompt.roundCorners(for: [.bottomLeft, .bottomRight], cornerRadius: 8)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


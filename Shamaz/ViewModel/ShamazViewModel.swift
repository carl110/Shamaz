//
//  ShamazModelView.swift
//  Shamaz
//
//  Created by Carl Wainwright on 26/04/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import Foundation


class ShamazViewModel {

    let pName = PlayerInputView()
    
    func pTime() -> String{
        
        //List of times used for Past and Future Prompts
        let time = ["1 day", "2 days", "3 days", "4 days" ,"5 days", "1 week", "2 weeks", "3 weeks", "1 month", "2 months", "3 months", "6 months", "1 year", "2 years", "3 years"]
        
        //Generate random time scale from 'time' list
        let randomTimeIndex = Int(arc4random_uniform(UInt32(time.count)))
        let randomTime = time[randomTimeIndex]
        
        let myResults: String = "\(randomTime)"
        return myResults
    }

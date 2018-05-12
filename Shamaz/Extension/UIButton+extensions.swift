//
//  UIButton+extensions.swift
//  Shamaz
//
//  Created by Carl Wainwright on 09/05/2018.
//  Copyright © 2018 Carl Wainwright. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func centerTextHorizontally(spacing: CGFloat) {
        titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
    }
    
    func enableButton() {
        alpha = 1.0
        isEnabled = true
    }
    
    func disableButton() {
        alpha = 0.17
        isEnabled = false
    }
    func chosenButton() {
        alpha = 1
        isEnabled = false
    }
}

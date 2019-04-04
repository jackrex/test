//
//  UIView+O2CornerRadius.swift
//  Tabbar
//
//  Created by jackrex on 10/2/2019.
//  Copyright © 2019 Sunny. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        // also  set(newValue)
        set {
            layer.cornerRadius = newValue
        }
    }
    
    //            imageLabel.layer.cornerRadius = 15
    //            imageLabel.layer.masksToBounds = true
    @IBInspectable var masksToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        // also  set(newValue)
        set {
            layer.masksToBounds = newValue
        }
    }
    
}

//
//  ReusableView.swift
//  TacoPop
//
//  Created by Mac on 3/2/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

protocol ReusableView: class { }

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
}

 

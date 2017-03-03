//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Mac on 3/2/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}

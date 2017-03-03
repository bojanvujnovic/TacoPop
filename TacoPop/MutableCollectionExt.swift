//
//  MutableCollectionExt.swift
//  TacoPop
//
//  Created by Mac on 3/3/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import Foundation

extension Array  {
    
    mutating func shuffle() {
        self.sort { (taco1, taco2) -> Bool in
            return arc4random() < arc4random()
        }
    }
}

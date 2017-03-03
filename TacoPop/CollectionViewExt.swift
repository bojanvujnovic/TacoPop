//
//  CollectionViewExt.swift
//  TacoPop
//
//  Created by Mac on 3/2/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>( _: T) where T: ReusableView, T: NibLoadableView  {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
        
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath)  as? T else {
            fatalError("Could not dequeue")
        }
        return cell
    }
}

extension UICollectionViewCell: ReusableView {  }

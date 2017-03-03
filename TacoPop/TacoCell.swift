 //
//  TacoCell.swift
//  TacoPop
//
//  Created by Mac on 3/2/17.
//  Copyright © 2017 Boki. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {
    
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(taco: Taco)  {
        self.taco = taco
        self.tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        self.tacoLabel.text = taco.productName
    }

}

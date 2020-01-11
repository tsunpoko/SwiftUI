//
//  CustomCell.swift
//  customCollectionView
//
//  Created by Takato Nakamatsu on 2019/12/16.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(model: Model) {
        title.text = model.title

        if let text = model.subTitle {
            subTitle.text = text
        }
        
        self.backgroundColor = .white
        
        myImageView.image = UIImage(named: "snoopdogg")
        myImageView.frame = CGRect(x: 20, y: 36, width: 120, height: 120)
    }
}

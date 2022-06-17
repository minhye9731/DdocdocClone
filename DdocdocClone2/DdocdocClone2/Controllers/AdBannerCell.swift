//
//  AdBannerCell.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class AdBannerCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentMode = .scaleAspectFit
        imgView.layer.cornerRadius = 10
        imgView.clipsToBounds = true
        self.contentView.addSubview(imgView!)
    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}

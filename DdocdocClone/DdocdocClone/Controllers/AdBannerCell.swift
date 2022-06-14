//
//  AdBannerCell.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/14/22.
//

import UIKit

class AdBannerCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentMode = .scaleAspectFit

//        imgView?.contentMode = .scaleAspectFit
//        imgView.layer.cornerRadius = 8
//        imgView.layer.masksToBounds = true
        self.contentView.addSubview(imgView!)

    }

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}

//
//  ReceiveCell.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class ReceiveCell: UITableViewCell {
    
    
    var medical: Datum? {
        didSet {
            guard let medical = medical else { return }
            placeNameLabel.text = medical.의원명
            placeAddressLabel.text = medical.소재지
            placePhoneLabel.text = medical.전화번호
        }
    }
    
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeSortLabel: UILabel!
    @IBOutlet weak var placeAddressLabel: UILabel!
    @IBOutlet weak var placePhoneLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    public func updateUI(cellData: Datum) {
        // 업데이트할 데이터 항목들 추가
        self.placeNameLabel.text = medical?.의원명
        self.placeAddressLabel.text = medical?.소재지
        self.placePhoneLabel.text = medical?.전화번호
    }

}



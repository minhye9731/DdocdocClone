//
//  HospitalViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import UIKit
import Alamofire

class HospitalViewController: UIViewController {

    
    @IBOutlet weak var HospitalNameLabel: UILabel!
    @IBOutlet weak var HospitalPhoneLabel: UILabel!
    @IBOutlet weak var HospitalAddressLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        HospitalRequest().getHospitalData(self)
      
    }
    

}

//MARK: - API
extension HospitalViewController {

    func didSuccess(_ response: HospitalResponse) {

        self.HospitalNameLabel.text = response.items[1].instNm
        self.HospitalPhoneLabel.text = response.items[1].telno
        self.HospitalAddressLabel.text = response.items[1].lctn

    }
}

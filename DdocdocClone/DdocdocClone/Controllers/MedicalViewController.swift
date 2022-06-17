//
//  MedicalViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import UIKit
import Alamofire

class MedicalViewController: UIViewController {

    @IBOutlet weak var MedicalNameLabel: UILabel!
    @IBOutlet weak var MedicalPhoneLabel: UILabel!
    @IBOutlet weak var MedicalAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        MedicalRequest().getMedicalData(self)
    }


}


//MARK: - API
extension MedicalViewController {

    func didSuccess(_ response: MedicalResponse) {

        self.MedicalNameLabel.text = response.data[1].의원명
        self.MedicalPhoneLabel.text = response.data[1].전화번호
        self.MedicalAddressLabel.text = response.data[1].소재지

    }
}

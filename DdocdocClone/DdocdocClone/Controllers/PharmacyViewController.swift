//
//  PharmacyViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import UIKit
import Alamofire

class PharmacyViewController: UIViewController {

    
    @IBOutlet weak var pharmacyNameLabel: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel: UILabel!
    @IBOutlet weak var pharmacyAddressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ParmacyRequest().getParmacyData(self)

      
    }
   
}


//MARK: - API
extension PharmacyViewController {

    func didSuccess(_ response: PharmacyResponse) {

        self.pharmacyNameLabel.text = response.resultlist[1].parmacyNm
        self.pharmacyPhoneLabel.text = response.resultlist[1].telno
        self.pharmacyAddressLabel.text = response.resultlist[1].rdnmadr
        
    }
}














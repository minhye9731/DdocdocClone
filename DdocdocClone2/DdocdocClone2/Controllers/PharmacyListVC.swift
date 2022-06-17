//
//  PharmacyListVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class PharmacyListVC: UIViewController {

    
    @IBOutlet weak var pharmacyNameLabel1: UILabel!
    @IBOutlet weak var pharmacyAddressLabel1: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel1: UILabel!
    @IBOutlet weak var distanceLabel1: UILabel!

    @IBOutlet weak var pharmacyNameLabel2: UILabel!
    @IBOutlet weak var pharmacyAddressLabel2: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel2: UILabel!
    @IBOutlet weak var distanceLabel2: UILabel!

    @IBOutlet weak var pharmacyNameLabel3: UILabel!
    @IBOutlet weak var pharmacyAddressLabel3: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel3: UILabel!
    @IBOutlet weak var distanceLabel3: UILabel!

    @IBOutlet weak var pharmacyNameLabel4: UILabel!
    @IBOutlet weak var pharmacyAddressLabel4: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel4: UILabel!
    @IBOutlet weak var distanceLabel4: UILabel!

    @IBOutlet weak var pharmacyNameLabel5: UILabel!
    @IBOutlet weak var pharmacyAddressLabel5: UILabel!
    @IBOutlet weak var pharmacyPhoneLabel5: UILabel!
    @IBOutlet weak var distanceLabel5: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        ParmacyRequest().getParmacyData(self)
    }
    
    func didSuccess(_ response: PharmacyResponse) {

        self.pharmacyNameLabel1.text = response.resultlist[0].parmacyNm
        self.pharmacyPhoneLabel1.text = response.resultlist[0].telno
        self.pharmacyAddressLabel1.text = response.resultlist[0].rdnmadr
        
        self.pharmacyNameLabel2.text = response.resultlist[1].parmacyNm
        self.pharmacyPhoneLabel2.text = response.resultlist[1].telno
        self.pharmacyAddressLabel2.text = response.resultlist[1].rdnmadr
        
        self.pharmacyNameLabel3.text = response.resultlist[2].parmacyNm
        self.pharmacyPhoneLabel3.text = response.resultlist[2].telno
        self.pharmacyAddressLabel3.text = response.resultlist[2].rdnmadr
        
        self.pharmacyNameLabel4.text = response.resultlist[3].parmacyNm
        self.pharmacyPhoneLabel4.text = response.resultlist[3].telno
        self.pharmacyAddressLabel4.text = response.resultlist[3].rdnmadr
        
        self.pharmacyNameLabel5.text = response.resultlist[4].parmacyNm
        self.pharmacyPhoneLabel5.text = response.resultlist[4].telno
        self.pharmacyAddressLabel5.text = response.resultlist[4].rdnmadr

    }

}

//
//  MedicalListVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class MedicalListVC: UIViewController {
    
    @IBOutlet weak var medicalNameLabel1: UILabel!
    @IBOutlet weak var medicalAddressLabel1: UILabel!
    @IBOutlet weak var medicalPhoneLabel1: UILabel!
    @IBOutlet weak var distanceLabel1: UILabel!
    
    @IBOutlet weak var medicalNameLabel2: UILabel!
    @IBOutlet weak var medicalAddressLabel2: UILabel!
    @IBOutlet weak var medicalPhoneLabel2: UILabel!
    @IBOutlet weak var distanceLabel2: UILabel!
    
    @IBOutlet weak var medicalNameLabel3: UILabel!
    @IBOutlet weak var medicalAddressLabel3: UILabel!
    @IBOutlet weak var medicalPhoneLabel3: UILabel!
    @IBOutlet weak var distanceLabel3: UILabel!
    
    @IBOutlet weak var medicalNameLabel4: UILabel!
    @IBOutlet weak var medicalAddressLabel4: UILabel!
    @IBOutlet weak var medicalPhoneLabel4: UILabel!
    @IBOutlet weak var distanceLabel4: UILabel!
    
    @IBOutlet weak var medicalNameLabel5: UILabel!
    @IBOutlet weak var medicalAddressLabel5: UILabel!
    @IBOutlet weak var medicalPhoneLabel5: UILabel!
    @IBOutlet weak var distanceLabel5: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        MedicalRequest().getMedicalData(self)
    }
    
    func didSuccess(_ response: MedicalResponse) {
        
        self.medicalNameLabel1.text = response.data[0].의원명
        self.medicalPhoneLabel1.text = response.data[0].전화번호
        self.medicalAddressLabel1.text = response.data[0].소재지
        
        self.medicalNameLabel2.text = response.data[1].의원명
        self.medicalPhoneLabel2.text = response.data[1].전화번호
        self.medicalAddressLabel2.text = response.data[1].소재지
        
        self.medicalNameLabel3.text = response.data[2].의원명
        self.medicalPhoneLabel3.text = response.data[2].전화번호
        self.medicalAddressLabel3.text = response.data[2].소재지
        
        self.medicalNameLabel4.text = response.data[3].의원명
        self.medicalPhoneLabel4.text = response.data[3].전화번호
        self.medicalAddressLabel4.text = response.data[3].소재지
        
        self.medicalNameLabel5.text = response.data[4].의원명
        self.medicalPhoneLabel5.text = response.data[4].전화번호
        self.medicalAddressLabel5.text = response.data[4].소재지
        
    }
}

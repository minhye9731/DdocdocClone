//
//  HospitalListVC.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class HospitalListVC: UIViewController {
    
    @IBOutlet weak var hospitalNameLabel1: UILabel!
    @IBOutlet weak var hospitalAddressLabel1: UILabel!
    @IBOutlet weak var hospitalPhoneLabel1: UILabel!
    
    @IBOutlet weak var hospitalNameLabel2: UILabel!
    @IBOutlet weak var hospitalAddressLabel2: UILabel!
    @IBOutlet weak var hospitalPhoneLabel2: UILabel!
    
    @IBOutlet weak var hospitalNameLabel3: UILabel!
    @IBOutlet weak var hospitalAddressLabel3: UILabel!
    @IBOutlet weak var hospitalPhoneLabel3: UILabel!
    
    @IBOutlet weak var hospitalNameLabel4: UILabel!
    @IBOutlet weak var hospitalAddressLabel4: UILabel!
    @IBOutlet weak var hospitalPhoneLabel4: UILabel!
    
    @IBOutlet weak var hospitalNameLabel5: UILabel!
    @IBOutlet weak var hospitalAddressLabel5: UILabel!
    @IBOutlet weak var hospitalPhoneLabel5: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        HospitalRequest().getHospitalData(self)
    }
    

    func didSuccess(_ response: HospitalResponse) {
        
        self.hospitalNameLabel1.text = response.dataList[0].mediName
        self.hospitalPhoneLabel1.text = response.dataList[0].tel
        self.hospitalAddressLabel1.text = response.dataList[0].addr
        
        self.hospitalNameLabel2.text = response.dataList[1].mediName
        self.hospitalPhoneLabel2.text = response.dataList[1].tel
        self.hospitalAddressLabel2.text = response.dataList[1].addr
        
        self.hospitalNameLabel3.text = response.dataList[2].mediName
        self.hospitalPhoneLabel3.text = response.dataList[2].tel
        self.hospitalAddressLabel3.text = response.dataList[2].addr
        
        self.hospitalNameLabel4.text = response.dataList[3].mediName
        self.hospitalPhoneLabel4.text = response.dataList[3].tel
        self.hospitalAddressLabel4.text = response.dataList[3].addr
        
        self.hospitalNameLabel5.text = response.dataList[4].mediName
        self.hospitalPhoneLabel5.text = response.dataList[4].tel
        self.hospitalAddressLabel5.text = response.dataList[4].addr
    
    }
}

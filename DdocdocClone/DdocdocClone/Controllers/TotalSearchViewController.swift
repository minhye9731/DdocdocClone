//
//  TotalSearchViewController.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/17/22.
//

import UIKit

class TotalSearchViewController: UIViewController {
    
    @IBOutlet weak var DdocdocTableView: UITableView!
    
    var medicalDatas = [Datum]()
    var medicalDataManager = MedicalRequest()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatas()
        setupTableView()
    }
    
    func setupDatas() {
//        HospitalRequest().getHospitalData(self)
//        ParmacyRequest().getParmacyData(self)
        medicalDataManager.getMedicalData(self)
    }
    
    func setupTableView() {
        DdocdocTableView.dataSource = self
        DdocdocTableView.delegate = self
        DdocdocTableView.rowHeight = 200
    }

  
}

// MARK: - tableview 상세설정
extension TotalSearchViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.medicalDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReceiveCell", for: indexPath) as! ReceiveCell
        
//        cell.placeNameLabel.text = Datum[indexPath.row]
//        cell.updateUI(cellData: Datum)
//        cell.medical =
//        cell.selectionStyle = .none
        return cell // ?? ReceiveCell()
    }
    
}

// MARK: - Medical Open API

extension TotalSearchViewController {

    func didSuccess(_ response: [Datum]) {
        print("get returned medical data from medicalresponse")

//        self.MedicalNameLabel.text = response.data[1].의원명
//        self.MedicalPhoneLabel.text = response.data[1].전화번호
//        self.MedicalAddressLabel.text = response.data[1].소재지

    }
}




//  HospitalRequest.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.


import Foundation
import Alamofire

class HospitalRequest {
    
    func getHospitalData(_ viewController: HospitalListVC) {
        
        let url = "http://apis.data.go.kr/4510000/GetMedicalInstitutionService/getMedicalInstitutionInfo?serviceKey=In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw==&pageIndex=10&firstIndex=1&dataType=JSON"
        
        let params: Parameters = [
            "serviceKey" : "In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw==",
            "pageIndex" : 10,
            "firstIndex" : 1
        ]
        
        // HTTP Method: GET
        AF.request(url,
                   method: .get,
                   parameters: params,
                   headers: nil)
        .responseDecodable(of: HospitalResponse.self) { response in
            
            switch response.result {
                
            case .success(let response):
                print("DEBUG>> OpenHospital Response \(response) ")
                viewController.didSuccess(response)
                
            case .failure(let error):
                print("DEBUG>> OpenHospital Get Error : \(error.localizedDescription)\n\(error)")
                
            }
        }
    }
}

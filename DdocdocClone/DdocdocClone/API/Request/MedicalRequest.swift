//
//  MedicalRequest.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import Foundation
import Alamofire

class MedicalRequest {
    
    func getMedicalData(_ viewController: MedicalViewController) {
        
        let url = "https://api.odcloud.kr/api/15086568/v1/uddi:7e6db3a0-fd1b-4708-a8ff-cbd429ddc72e?page=1&perPage=15&serviceKey=In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw%3D%3D"
        
        let params: Parameters = [
            "serviceKey" : "In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw==",
            "page" : 1,
            "perPage" : 15
        ]
        
        // HTTP Method: GET
        AF.request(url,
                   method: .get,
                   parameters: params,
                   headers: nil)
        .responseDecodable(of: MedicalResponse.self) { response in
            
            switch response.result {
                
            case .success(let response):
                print("DEBUG>> OpenMedical Response \(response) ")
                viewController.didSuccess(response)
                
            case .failure(let error):
                print("DEBUG>> OpenMedical Get Error : \(error.localizedDescription)\n\(error)")
                
            }
        }
    }
}

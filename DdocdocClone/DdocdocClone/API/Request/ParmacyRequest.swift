//
//  ParmacyRequest.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import UIKit
import Alamofire

class ParmacyRequest {
    
    func getParmacyData(_ viewController: PharmacyViewController) {
        
        let url = "http://apis.data.go.kr/3660000/PharmacyService/getPharmacyList?serviceKey=In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw==&numOfRows=15"
        
        let params: Parameters = [
            "serviceKey" : "In3zvEfdjADFB9bTdoM1Z4UlCeEhIeTo2carmmZtP0pwK4XXrMwlKSJp0fx3g0LuCNyXd1jrq9OzimhFWp4qAw==",
            "numOfRows" : "15"
        ]
        
        // HTTP Method: GET
        AF.request(url,
                   method: .get,
                   parameters: params,
                   headers: nil)
        .responseDecodable(of: PharmacyResponse.self) { response in
            
            switch response.result {
                
            case .success(let response):
                print("DEBUG>> OpenParmacy Response \(response) ")
                viewController.didSuccess(response)
                
            case .failure(let error):
                print("DEBUG>> OpenParmacy Get Error : \(error.localizedDescription)")
                
            }
        }
    }
}

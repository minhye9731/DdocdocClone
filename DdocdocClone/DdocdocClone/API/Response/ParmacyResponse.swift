//
//  ParmacyResponse.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import Foundation

// MARK: - PharmacyResponse
struct PharmacyResponse: Decodable {
    let resultCode: Int
    let resultMsg: String
    let numOfRows: Int
    let pageNo: String
    let totalCount: Int
    let resultlist: [Resultlist]
}

// MARK: - Resultlist
struct Resultlist: Decodable {
    let no: Int
    let parmacyNm, telno, rdnmadr, dataCrtrYmd: String

    enum CodingKeys: String, CodingKey {
        case no
        case parmacyNm = "parmacy_nm"
        case telno, rdnmadr
        case dataCrtrYmd = "data_crtr_ymd"
    }
}


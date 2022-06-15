//
//  HospitalResponse.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import Foundation

// MARK: - HospitalResponse
struct HospitalResponse: Decodable {
    let resultCode: Int
    let resultMsg: String
    let numOfRows, pageNo, totalCount: Int
    let items: [Item]
}

// MARK: - Item
struct Item: Decodable {
    let no: Int
    let type: TypeEnum
    let instNm, lctn, telno: String

    enum CodingKeys: String, CodingKey {
        case no, type
        case instNm = "inst_nm"
        case lctn, telno
    }
}

enum TypeEnum: String, Decodable {
    case 병의원 = "병/의원"
}


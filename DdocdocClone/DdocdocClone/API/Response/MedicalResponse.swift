//
//  MedicalResponse.swift
//  DdocdocClone
//
//  Created by 강민혜 on 6/15/22.
//

import Foundation

// MARK: - MedicalResponse
struct MedicalResponse: Codable {
    let currentCount: Int
    let data: [Datum]
    let matchCount, page, perPage, totalCount: Int
}

// MARK: - Datum
struct Datum: Codable {
    let 데이터기준일자, 소재지, 의원명, 전화번호: String
}


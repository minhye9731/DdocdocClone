//
//  DoctorResponse.swift
//  DdocdocClone2
//
//  Created by 강민혜 on 6/17/22.
//

import Foundation

// MARK: - HospitalResponse
struct HospitalResponse: Codable {
    let dataList: [DataList]
    let firstIndex, totCnt, pageIndex: Int
    let resultCode, resultMsg: String

    enum CodingKeys: String, CodingKey {
        case dataList = "data_list"
        case firstIndex, totCnt, pageIndex, resultCode, resultMsg
    }
}

// MARK: - DataList
struct DataList: Codable {
    let date: DateEnum
    let mediTime, mediHoli: JSONNull?
    let mediDiv: MediDiv
    let mediTre: JSONNull?
    let regDate: Int
    let lon: JSONNull?
    let tel, addr, mediName: String
    let lat: JSONNull?
}

enum DateEnum: String, Codable {
    case the20200207122451 = "2020-02-07 12:24:51"
    case the20200207122452 = "2020-02-07 12:24:52"
    case the20200207122453 = "2020-02-07 12:24:53"
}

enum MediDiv: String, Codable {
    case 노인병원 = "노인병원"
    case 병원 = "병원"
    case 의원 = "의원"
    case 일반요양병원 = "일반요양병원"
    case 정신병원 = "정신병원"
    case 종합병원 = "종합병원"
    case 치과의원 = "치과의원"
    case 한의원 = "한의원"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

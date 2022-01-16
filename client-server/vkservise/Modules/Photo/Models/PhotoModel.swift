//
//  PhotoModel.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import Foundation

struct PhotoModel: Codable {
    let albumID, id, date: Int
    let text: String?
    let size: [sizeModel]
    let lat: Double
    let ownerID: Int
    let long: Double?
    
    enum CodingKeys: String, CodingKey {
        case albumID = "album_id"
        case id, date, text, size, lat
        case ownerID = "owner_id"
        case long
    }
}
struct sizeModel: Codable {
    let width, height: Int
    let url: String
    let type: String
}

//
//  PhotoModel.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import Foundation
import RealmSwift

class PhotoModelDAO: Object, Codable {
    @objc dynamic var albumID = 0
    @objc dynamic var id = 0
    @objc dynamic var date = 0
    @objc dynamic var text: String?
    var size: [sizeModelDAO]
    @objc dynamic var lat = 0
    @objc dynamic var ownerID = 0
    @objc dynamic var long = 0
    
    enum CodingKeys: String, CodingKey {
        case albumID = "album_id"
        case id, date, text, size, lat
        case ownerID = "owner_id"
        case long
    }
}
class sizeModelDAO: Object, Codable {
    @objc dynamic var width = 0
    @objc dynamic var height = 0
    @objc dynamic var url = ""
    @objc dynamic var type = ""
}

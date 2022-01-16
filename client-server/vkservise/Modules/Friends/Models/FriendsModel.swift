//
//  FriendsModel.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.12.21.
//

import Foundation
import RealmSwift

class FriendsModelDAO: Object,  Codable {
    @objc dynamic var domain = ""
    @objc dynamic var id = 0
    @objc dynamic var lastName = ""
    @objc dynamic var photo50 = ""
    @objc dynamic var trackCode = ""
    @objc dynamic var firstName = ""

    enum CodingKeys: String, CodingKey {
        case domain
        case id
        case lastName = "last_name"
        case photo50 = "photo_50"
        case trackCode = "track_code"
        case firstName = "first_name"
    }
}

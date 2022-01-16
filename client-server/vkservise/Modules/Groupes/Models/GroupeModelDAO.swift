//
//  GroupModel.swift
//  Vkontakte
//
//  Created by Олег Борель on 15.01.22.
//

import Foundation
import RealmSwift

class GroupeModelDAO: Object, Codable {
    @objc dynamic var  isMember = 0
    @objc dynamic var  id = 0
    @objc dynamic var  photo100 = ""
    @objc dynamic var  isAdvertiser = 0
    @objc dynamic var  isAdmin = 0
    @objc dynamic var  photo50 = ""
    @objc dynamic var  type = ""
    @objc dynamic var  screenName = ""
    @objc dynamic var  name = ""
    @objc dynamic var  isClosed = 0

    enum CodingKeys: String, CodingKey {
        case isMember = "is_member"
        case id
        case photo100 = "photo_100"
        case isAdvertiser = "is_advertiser"
        case isAdmin = "is_admin"
        case photo50 = "photo_50"
        case type
        case screenName = "screen_name"
        case name
        case isClosed = "is_closed"
    }
}

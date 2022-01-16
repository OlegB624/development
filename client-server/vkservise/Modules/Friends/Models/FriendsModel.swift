//
//  FriendsModel.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.12.21.
//

import Foundation

struct FriendsContainer: Codable {
    let response: FriendsResponse
}
struct FriendsResponse: Codable {
    let count: Int
    let items: [FriendsModel]
}

struct FriendsModel: Codable {
    let domain: String
    let id: Int
    let lastName: String
    let photo50: String
    let trackCode: String?
    let firstName: String

    enum CodingKeys: String, CodingKey {
        case domain, id
        case lastName = "last_name"
        case photo50 = "photo_50"
        case trackCode = "track_code"
        case firstName = "first_name"
    }
}

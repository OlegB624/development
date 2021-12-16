//
//  FriendsAPI.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.12.21.
//

import Foundation
final class FriendsAPI {
    
let token = Session.shared.token
let userId = Session.shared.userId
    let version = "5.81"
    let baseUrl = "https://api.vk.com/method"

    func getFriends(completion: @escaping([FriendsModel])->()){
        let method = "/friends.get"
        let parameters :[String: String] = [
            "user_id":userId,
            "order":"name",
            "fields":"photo_50",
            "count":"50",
            "access_token": token,
            "v":version
        ]
        let url = baseUrl+method
        
    }
}

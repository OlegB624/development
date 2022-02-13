//
//  FriendsAPI.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON
final class friendsAPI {
func getFriends(completion: @escaping([FriendsModelDAO])->()) {
    let token = Session.shared.token
    let userId = Session.shared.userId
    let version = "5.81"
    let baseUrl = "https://api.vk.com/method"
    let path = "/friends.get"
    let url = baseUrl + path
    let params: [String: String] = [
        "user_id": userId,
        "order": "name",
        "count": "50",
        "fields": "photo_100, photo_50, city, domain",
        "access_token": token,
        "v": version
    ]
    AF.request(url, method: .get, parameters: params).responseJSON { response in
        print(response.data?.prettyJSON)
        guard let jsonData = response.data else { return }
        do {
            let itemsData = try JSON(jsonData)["response"]["items"].rawData()
            let friends = try JSONDecoder().decode([FriendsModelDAO].self, from: itemsData)
            completion(friends)
        } catch {
            print(error)
            }
        }
    }
}

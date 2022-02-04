//
//  GroupesAPI.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON
final class groupesAPI {
    func getGroupes(completion: @escaping([GroupeModelDAO])->()) {
    let token = Session.shared.token
    let userId = Session.shared.userId
    let version = "5.81"
    let baseUrl = "https://api.vk.com/method"
    let method = "groups.get"
    let parameters: Parameters = [
        "userId": userId,
        "extended": 1,
        "access_token": token,
        "count": 5,
        "v":version
    ]
    let url = baseUrl + method
    AF.request(url, method: .get, parameters: parameters).responseJSON { response in
        print("Response.data: \(response.data?.prettyJSON)")
        }
    }
}


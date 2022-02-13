//
//  PhotoAPI.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON
final class photoAPI {
    func getPhoto(completion: @escaping([PhotoModelDAO])->()) {

    let token = Session.shared.token
    let userId = Session.shared.userId
    let version = "5.81"
    let baseUrl = "https://api.vk.com/method"
    let method = "photo.getALL"
    let parameters: Parameters = [
        "userId": userId,
        "rev": 0,
        "fields": "photo_50",
        "access_token": token,
        "count": 5,
        "v":version
    ]
    let url = baseUrl + method
    AF.request(url, method: .get, parameters: parameters).responseJSON { response in
        guard let request = response.request else {return}
        guard let data = response.data else {return}
        print ("photo.getALL request: \(request)")
        print (data.prettyJSON)
        }
    }
}

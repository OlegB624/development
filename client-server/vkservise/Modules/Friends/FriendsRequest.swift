//
//  FriendsRequest.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.02.22.
//

import Foundation

class FriendsRequest: Operation {

    let session = Session.shared
    var data = Data()


    override func main() {

        let urlFriends = URL(string: "http://api.vk.com/method/friends.get?v=5.81&access_token=\(session.token)&count=50&fields=nickname,photo_50")

        guard let data = try? Data(contentsOf: urlFriends!) else {return}

        self.data = data
    }




}

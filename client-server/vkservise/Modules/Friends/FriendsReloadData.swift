//
//  FriendsReloadData.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.02.22.
//

import Foundation

class FriendsReloadData: Operation {

    var friendsViewController: FriendsViewController

    override func main() {
        print("3st step")

        guard let parsedFriendsData = dependencies.first as? FriendsJsonDecode,
              let friendsList = parsedFriendsData.friendArray as? [Friend] else {return}

        friendsViewController.friendArray = friendsList
        friendsViewController.tableView.reloadData()
    }

    init(controller: FriendsViewController) {
        self.friendsViewController = controller
    }
}

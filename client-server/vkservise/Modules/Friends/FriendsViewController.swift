//
//  FriendsViewController.swift
//  Vkontakte
//
//  Created by Олег Борель on 11.01.22.
//

    import UIKit
    import SDWebImage

    final class FriendsViewController: UITableViewController {
        private var friendAPI = friendsAPI()
        private var friends: [FriendsModelDAO] = []
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "FriendsCell")
            friendAPI.getFriends { [weak self] friends in
                guard let self = self else { return }
                
                self.friends = friends
                self.tableView.reloadData()
            }
        }
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return friends.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)
            let friend: FriendsModelDAO = friends[indexPath.row]
            cell.textLabel?.text = "\(friend.firstName) \(friend.lastName)"
            if let url = URL(string: friend.photo50) {
                cell.imageView?.sd_setImage(with: url, completed: nil)
            }
            return cell
        }
    }

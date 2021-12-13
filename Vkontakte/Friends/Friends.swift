//
//  User.swift
//  Vkontakte
//
//  Created by Олег Борель on 7.11.21.
//

import UIKit

class Friends: UITableViewController {
    struct myStruct {
        var alfavit = ["А","Б","В","Г","Д","Е","Ж","З","И","Й","К","Л","М","Н","О","П","Р","С","Т","У","Ф","Х","Ц","Ч","Ш","Щ","Ы","Э","Ю","Я"]
        var friend = ["Гендос", "Чебурашка", "Шапокляк", "Волк","Заяц", "Какашка","Друг"]
        }
    var avatar = [UIImage(named: "Гендос"),UIImage(named: "Чебурашка"),UIImage (named: "Волк"),UIImage (named: "Заяц"),UIImage (named: "Какашка"),UIImage (named: "Шапокляк")]
    var myObject = [myStruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigTable()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return myObject.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myObject[section].friend.count
        }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsCell else {
            return UITableViewCell()
        }
        cell.FriendsName.text = myObject[indexPath.section].friend[indexPath.row]
        cell.AvatarFriend.image = UIImage(named: cell.FriendsName.text!)
       
        if UIImage (named: cell.FriendsName.text!) == nil {
            cell.AvatarFriend.image = UIImage(named: "no-photo")
        }
        cell.AvatarFriend.layer.cornerRadius = cell.AvatarFriend.frame.height / 2
            return cell
        }
    // Friends table header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       guard let header = tableView.dequeueReusableHeaderFooterView(withIdentifier:"friendsHeaderId") as? CustomHeaderFriends else {
           return UITableView()
       }
        header.title.text = myObject[section].alfavit[section]
       return header
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 30
        }
    func ConfigTable () {
        tableView.register(CustomHeaderFriends.self,
            forHeaderFooterViewReuseIdentifier: "friendsHeaderId")
    }
}

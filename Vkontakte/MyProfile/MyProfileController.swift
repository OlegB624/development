//
//  MyProfileController.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.11.21.
//

import UIKit

class MyProfileController: UITableViewController {
    var myName = "Иванов Иван"
    let myAvatar = UIImage(named: "myAvatar")
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyProfileCell", for: indexPath) as? MyProfileCell else {
            return MyProfileCell()
        }
        let name = myName
        cell.MyName.text = name
        
        let avatar = myAvatar
        cell.MyProfilePhoto.image = avatar
        return cell
    }
}

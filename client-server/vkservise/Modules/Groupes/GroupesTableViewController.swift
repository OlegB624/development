//
//  GroupesTableViewController.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import UIKit

final class GroupesTableViewController: UITableViewController {
    
        private var groupeAPI = groupesAPI()
        private var myGroupe: [GroupeModel] = []
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            groupeAPI.getGroupes { [weak self] myGroupe in
                guard let self = self else { return }
                self.myGroupe = myGroupe
                self.tableView.reloadData()
            }
        }
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return myGroupe.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)
            let groupe: GroupeModel = myGroupe[indexPath.row]
            cell.textLabel?.text = "\(groupe.name)"
            if let url = URL(string: groupe.photo50) {
                cell.imageView?.sd_setImage(with: url, completed: nil)
            }
            return cell
        }
}

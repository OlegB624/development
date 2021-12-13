//
//  GroupSearchController.swift
//  Vkontakte
//
//  Created by Олег Борель on 8.11.21.
//

import UIKit

class GroupSearchController: UITableViewController {
    var groupes = [
            "MDK",
            "WylsaCOM",
            "VasyaRND",
            "Romantul",
            "autogrodno.by",
            "netflix",
            "s13",
            "bulbanews",
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupSearch", for: indexPath) as? GroupSearchCell else {
            return UITableViewCell()
        }
        let groupesearch = groupes[indexPath.row]
        cell.GroupesSearch.text = groupesearch
        return cell
    }
}

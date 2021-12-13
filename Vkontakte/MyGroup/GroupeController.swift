//
//  GroupeController.swift
//  Vkontakte
//
//  Created by Олег Борель on 8.11.21.
//

import UIKit

class GroupeController: UITableViewController {
    var groupes = [String]()
    @IBAction func addgroupe(segue: UIStoryboardSegue) {
                if segue.identifier == "addGroupe" {
                    guard let groupsearchcontroller = segue.source as? GroupSearchController else { return }
                    if let indexPath = groupsearchcontroller.tableView.indexPathForSelectedRow {
                        let groupe = groupsearchcontroller.groupes[indexPath.row]
                        if !groupes.contains(groupe) {
                            groupes.append(groupe)
                            tableView.reloadData()
                        }
                    }
                }
        }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                groupes.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupe", for: indexPath) as? GroupeCell else {
            return UITableViewCell()
        }
        let groupe = groupes[indexPath.row]
        cell.MyGroupe.text = groupe
        return cell
    }
}

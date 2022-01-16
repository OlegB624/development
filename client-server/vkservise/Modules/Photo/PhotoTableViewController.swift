//
//  PhotoTableViewController.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import Foundation
import UIKit
import SDWebImage

class PhotoTableViewController: UITableViewController {
    private var photosAPI = photoAPI()
    private var photoM: [PhotoModelDAO] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PhotoCell")
        photosAPI.getPhoto { [weak self] photoM in
            guard let self = self else { return }
            self.photoM = photoM
            self.tableView.reloadData()
        }
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photoM.count
    }
    override func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath)
        let photo:PhotoModelDAO = photoM[indexPath.row]
        cell.textLabel?.text = String(photo.id)
        if let url = URL(string: photo.size.first!.url){
            cell.imageView?.sd_setImage(with: url, completed: nil)
        }
        return cell
    }
}

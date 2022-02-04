//
//  NewsTableViewController.swift
//  Vkontakte
//
//  Created by Олег Борель on 31.01.22.
//

import UIKit

class NewsTableViewController: UITableViewController {

    var myNews = [comements: 10, likes: 5]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return myNews.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
           var returnCell: UITableViewCell!
        
           let new = myNews[indexPath.section]
        

           switch indexPath.row {
           case 1:
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? NewsCell else { return returnCell }
               cell.newsTextLabel.text = myNews.text
               returnCell = cell
               
           case 2:
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoNewsCell", for: indexPath) as? PhotoNewsTableViewCell else { return returnCell }
               cell.PhotoNewsImageView.image = UIImage(named: myNews.photo ?? "heart.fill")
               returnCell = cell
               
           case 3:
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "avNewsCell", for: indexPath) as? AuthorNewsTableViewCell else { return returnCell }
               cell.AuthorNewsCell.text = myNews.author
               returnCell = cell
               
           case 4:
               guard let cell = tableView.dequeueReusableCell(withIdentifier: "LikeNewsCell", for: indexPath) as? LikedNewsTableViewCell else { return returnCell }
               cell.LikeNewsLabel.text = String(myNews.likes ?? 0)
               cell.CommentNewsLabel.text = String(myNews.comments ?? 0)
               cell.SharedNewsLabel.text = String(myNews.shared ?? 0)
               returnCell = cell
           default:
               break
           }

}
}

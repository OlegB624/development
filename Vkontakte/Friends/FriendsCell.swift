//
//  FriendsCell.swift
//  Vkontakte
//
//  Created by Олег Борель on 18.11.21.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var FriendsName: UILabel!
    @IBOutlet weak var AvatarFriend: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

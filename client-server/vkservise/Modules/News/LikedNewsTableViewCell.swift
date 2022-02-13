//
//  LikedNewsTableViewCell.swift
//  Vkontakte
//
//  Created by Олег Борель on 1.02.22.
//

import UIKit

class LikedNewsTableViewCell: UITableViewCell {

    @IBOutlet weak var CommentNewsLabel: UILabel!
    @IBOutlet weak var LikeNewsLabel: UILabel!
    @IBOutlet weak var SharedNewsLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

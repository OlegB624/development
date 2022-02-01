//
//  TableViewCell.swift
//  Vkontakte
//
//  Created by Олег Борель on 31.01.22.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet weak var newsTextLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

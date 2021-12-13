//
//  MyProfileCell.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.11.21.
//

import UIKit

class MyProfileCell: UITableViewCell {

    @IBOutlet weak var MyName: UILabel!
    @IBOutlet weak var MyProfilePhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        MyProfilePhoto.layer.shadowColor = UIColor.purple.cgColor
        MyProfilePhoto.layer.shadowRadius = 10
        MyProfilePhoto.layer.shadowOffset = CGSize.zero
        MyProfilePhoto.layer.shadowOpacity = 1
        MyProfilePhoto.backgroundColor = .clear
        MyProfilePhoto.clipsToBounds = false
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }

}

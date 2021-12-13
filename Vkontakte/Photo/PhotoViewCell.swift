//
//  PhotoViewCell.swift
//  Vkontakte
//
//  Created by Олег Борель on 8.11.21.
//

import UIKit
class PhotoViewCell: UICollectionViewCell {
    @IBOutlet weak var PhotoFriend: UIImageView!
    @IBOutlet weak var likeBtn: UIButton!
    @IBAction func likeBtnClick(_ sender: UIButton) {
        if likeBtn.tag == 0 {
            likeBtn.setImage(UIImage(systemName: "suit.heart.fill"), for: .normal)
            likeBtn.configuration?.baseForegroundColor = UIColor.red
            likeBtn.setTitle("1", for: .normal)
            likeBtn.setTitleColor(.red, for:.normal )
            likeBtn.configuration?.buttonSize = .mini
            likeBtn.tag = 1
        }else{
            likeBtn.setImage(UIImage(systemName: "suit.heart"), for: .normal)
            likeBtn.configuration?.baseForegroundColor = UIColor.gray
            likeBtn.setTitle("0", for: .normal)
            likeBtn.setTitleColor(.gray, for: .normal)
            likeBtn.tag = 0
        }
    }
}

//
//  PhotoController.swift
//  Vkontakte
//
//  Created by Олег Борель on 8.11.21.
//

import UIKit
import Foundation

class PhotoController: UICollectionViewController {
    var friendsphoto = [UIImage(named: "Гендос"),UIImage(named: "Чебурашка"),UIImage (named: "Волк"),UIImage (named: "Заяц"),UIImage (named: "Какашка"),UIImage (named: "Шапокляк")]
    override func viewDidLoad() {
        super.viewDidLoad()
           }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoViewCell else {
            return UICollectionViewCell()}
        let photoFr = friendsphoto[indexPath.row]
        cell.PhotoFriend.image = photoFr
        cell.PhotoFriend.layer.cornerRadius = cell.PhotoFriend.frame.height / 2
        return cell
        }
}


//
//  MyProfilePhotoController.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.11.21.
//

import UIKit

class MyProfilePhotoController: UICollectionViewController {
    var myPhoto = [UIImage(named: "1"), UIImage (named: "2"),UIImage(named: "3"), UIImage(named: "4"),UIImage (named: "5")]
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPhoto.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyGallery", for: indexPath) as? MyProfilePhotoCell else {
            return MyProfilePhotoCell()
        }
        var gallery = myPhoto[indexPath.row]
        cell.galleryCell.image = gallery
        cell.galleryCell.layer.cornerRadius = cell.galleryCell.frame.height/2
        
        cell.shadowView.layer.cornerRadius = cell.galleryCell.frame.height/2.1
        cell.shadowView.layer.shadowColor = UIColor.red.cgColor
        cell.shadowView.layer.shadowOffset = CGSize.zero
        cell.shadowView.layer.shadowOpacity = 1
        cell.shadowView.clipsToBounds = false
    
        return cell
    }
}

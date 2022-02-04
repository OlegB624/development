////
////  PhotoController.swift
////  Vkontakte
////
////  Created by Олег Борель on 8.11.21.
////
//
//import UIKit
//import Foundation
//import SDWebImage
//
//class PhotoController: UICollectionViewController {
//    
//    private var friendsPhoto = API()
//    private var Photo: [PhotoModel] = []
//    
//    
////    var friendsphoto = [UIImage(named: "Гендос"),UIImage(named: "Чебурашка"),UIImage (named: "Волк"),UIImage (named: "Заяц"),UIImage (named: "Какашка"),UIImage (named: "Шапокляк")]
//    override func viewDidLoad() {
//        super.viewDidLoad()
//           }
//    
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return Photo.count
//    }
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoViewCell else {
//            return UICollectionViewCell()}
//        
//        let photo:PhotoModel = Photo[indexPath.row]
//        
//        cell.textLabel?.text = String(photo.id)
//
//        if let url = URL(string: photo.size.first!.url){
//            cell.imageView?.sd_setImage(with: url, completed: nil)
//        }
////        cell.PhotoFriend?.image = UIImage(photo.id)
////        cell.PhotoFriend.layer.cornerRadius = cell.PhotoFriend.frame.height / 2
//        return cell
//        }
//}
//

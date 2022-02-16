//
//  friend.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.02.22.
//

import UIKit
import RealmSwift
import Realm

struct Friend {
    var name = String()
    var avatar = UIImage()
    var photos = [UIImage]()
    var id = Int()
}


//
//  test.swift
//  Vkontakte
//
//  Created by Олег Борель on 16.01.22.
//

import Foundation
import UIKit
import RealmSwift

// DTO - модель для работы с сетью
// DAO - модель для работы с базой данных
struct StudentDTO: Codable {
    var name = ""
    var group = ""
}

class StudentDAO: Object, Codable {
    @objc dynamic var name = ""
    @objc dynamic var group = ""
}

class StorageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       useRealm()
    }

    func useRealm() {

    }

}

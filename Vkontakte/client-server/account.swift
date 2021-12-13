//
//  account.swift
//  Vkontakte
//
//  Created by Олег Борель on 13.12.21.
//

import Foundation

class Session {
    static let sessionApp = Session()
    private init(){}
    var token: String = ""
    var userId: Int = 1
}

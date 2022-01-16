//
//  account.swift
//  Vkontakte
//
//  Created by Олег Борель on 13.12.21.
//

import Foundation

final class Session {
    private init() {}

    static let shared = Session()

    var token = ""
    var userId = ""
}

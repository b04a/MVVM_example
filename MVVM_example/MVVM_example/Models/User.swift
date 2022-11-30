//
//  User.swift
//  MVVM_example
//
//  Created by Danil Bochkarev on 30.11.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}


extension User {
    static var logins = [
        User(login: "future", password: "12345")
    ]
}

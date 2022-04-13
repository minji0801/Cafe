//
//  User.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/13.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "패캠", account: "fast.campus")
}

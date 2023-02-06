//
//  LoadedUser.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//

import Foundation

struct LoadedUser: Codable, Identifiable{
    var id: String?
    var isActive: Bool
    var name: String
    var age: Int
    var company: String?
    var friends: [LoadedFriend]
}

struct LoadedFriend: Codable{
    var id: String?
    var name: String?
}

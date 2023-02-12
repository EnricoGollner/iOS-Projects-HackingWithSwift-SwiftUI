//
//  User.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import Foundation
import SwiftUI

struct LoadedUser: Codable, Identifiable{
    var id: String?
    var name: String
    var age: Int
    var company: String?
    var isActive: Bool
    var friends: [LoadedFriends]
}

struct LoadedFriends: Codable{
    var id: String?
    var name: String?
}

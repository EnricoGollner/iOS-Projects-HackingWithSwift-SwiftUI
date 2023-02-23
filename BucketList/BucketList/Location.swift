//
//  Location.swift
//  BucketList
//
//  Created by Enrico Sousa Gollner on 22/02/23.
//

import Foundation

struct Location: Identifiable, Codable, Equatable{
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double
}

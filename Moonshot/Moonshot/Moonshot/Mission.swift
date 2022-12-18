//
//  mission.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 17/12/22.
//

import Foundation

struct Mission: Codable, Identifiable{
    
    struct CrewRole: Codable{
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}

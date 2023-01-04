//
//  ActiviteItem.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import Foundation

struct ActivityItem: Codable, Identifiable{
    var id = UUID()
    let activityTitle: String
    let activiteDescription: String
    var timesDone: Int
}

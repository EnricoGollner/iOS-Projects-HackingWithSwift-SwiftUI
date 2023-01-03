//
//  Activities.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import Foundation

struct ActiviteItem: Identifiable, Codable{
    var id = UUID()
    let descripResume: String
    var times: Int
    var isCompleted: Bool
}


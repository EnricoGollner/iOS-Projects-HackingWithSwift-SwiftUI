//
//  Activities.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import Foundation

class Activities: ObservableObject{
    @Published var listOfActivities = [ActivityItem]() {
        didSet{
            if let encoded = try? JSONEncoder().encode(listOfActivities){
                UserDefaults.standard.set(encoded, forKey: "listOfActivities")
            }
        }
    }
    
    init(){
        if let savedListEncoded = UserDefaults.standard.data(forKey: "listofActivities"){
            if let decodedList = try? JSONDecoder().decode([ActivityItem].self, from: savedListEncoded){
                listOfActivities = decodedList
                return
            }
        }
        
        listOfActivities = []
    }
}

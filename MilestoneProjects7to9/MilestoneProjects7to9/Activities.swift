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
            if let encodedListOfActivities = try? JSONEncoder().encode(listOfActivities){
                UserDefaults.standard.set(encodedListOfActivities, forKey: "listOfActivitiesEncoded")
            }
        }
    }
    
    init(){
        if let savedListEncoded = UserDefaults.standard.data(forKey: "listofActivitiesEncoded"){
            if let decodedList = try? JSONDecoder().decode([ActivityItem].self, from: savedListEncoded){
                listOfActivities = decodedList
                return
            }
        }
        
        listOfActivities = []
    }
}

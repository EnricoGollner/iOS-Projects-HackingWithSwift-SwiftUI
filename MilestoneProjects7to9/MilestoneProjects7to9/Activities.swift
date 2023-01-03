//
//  Activities.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import Foundation

class Activities: ObservableObject{
    @Published var listOfActivities = [ActiviteItem]() {
        didSet{
            if let encoded = try? JSONEncoder().encode(listOfActivities){
                UserDefaults.standard.set(encoded, forKey: "listOfActivities")
            }
        }
    }
    
    
    init(){
        if let savedItems = try? UserDefaults.standard.data(forKey: "listOfActivities"){
            if let decodedItems = try? JSONDecoder().decode([ActiviteItem].self, from: savedItems){
                listOfActivities = decodedItems
                return
            }
        }
        
        listOfActivities = []
    }
}

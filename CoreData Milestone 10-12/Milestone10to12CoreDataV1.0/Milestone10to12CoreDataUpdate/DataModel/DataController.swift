//
//  DataController.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Users")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Couldn't load Data: \(error.localizedDescription)")
            }
            
        }
    }
}

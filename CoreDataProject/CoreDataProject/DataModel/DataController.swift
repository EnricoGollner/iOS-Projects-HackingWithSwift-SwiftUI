//
//  DataController.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Failed to load the data: \(error.localizedDescription)")
                return
            }
            
            //  Ensuring Core Data Objects are unique using constraints in Data Model Wizard Entity
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
            
        }
    }
}

//
//  DataController.swift
//  CoreDataSingers
//
//  Created by Enrico Sousa Gollner on 31/01/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Singers")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Couldn't load data: \(error.localizedDescription)")
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}

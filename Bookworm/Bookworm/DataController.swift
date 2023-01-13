//
//  DataController.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 12/01/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Bookworm")  // Core Data type responsible for loading a model and then giving us the access to the data inside
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

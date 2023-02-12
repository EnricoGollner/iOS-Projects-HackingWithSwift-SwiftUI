//
//  DataController.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Users")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Failed to load data: \(error.localizedDescription)")
            }
        }
    }
}

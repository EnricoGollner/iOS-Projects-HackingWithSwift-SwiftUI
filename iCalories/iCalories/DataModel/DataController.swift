//
//  DataController.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 20/01/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "FoodModel")
    
    init() {
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("Failed to load the data: \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext){
        do{
            try? context.save()
            print("Data saved")
        } catch{
            print("We couldn't save the data...")
        }
    }
    
    func addFood(name: String, calories: Double, moc: NSManagedObjectContext){
        let food = Food(context: moc)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: moc)
    }
    
    func editFood(food: Food, name: String, calories: Double, moc: NSManagedObjectContext){
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: moc)
    }
}

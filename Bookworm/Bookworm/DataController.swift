//
//  DataController.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 12/01/23.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Bookworm")  // Gives us the access control to the Data Model
    
    init(){
        container.loadPersistentStores{ description, error in  // Load that data model
            if let error = error{
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    func addAndSave(title: String, author: String, rating: Int, genre: String, review: String, context: NSManagedObjectContext){
        let newBook = Book(context: context)
        newBook.id = UUID()
        newBook.title = title
        newBook.author = author
        newBook.rating = Int16(rating)
        newBook.genre = genre
        newBook.review = review
        newBook.date = Date.now
        
        if context.hasChanges{
            try? context.save()  // Write those changes out
        }
    }
}

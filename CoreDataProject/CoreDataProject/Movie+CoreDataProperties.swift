//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16
    
    private var wrappedtitle: String{
        title ?? "Unknown title"
    }

}

extension Movie : Identifiable {

}

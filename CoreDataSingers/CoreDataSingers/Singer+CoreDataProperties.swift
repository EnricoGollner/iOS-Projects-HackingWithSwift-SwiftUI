//
//  Singer+CoreDataProperties.swift
//  CoreDataSingers
//
//  Created by Enrico Sousa Gollner on 31/01/23.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    public var wrappedFirstName: String{
        firstName ?? "Unknown Singer"
    }
    
    public var wrappedLastName: String{
        lastName ?? "Unknown Singer"
    }

}

extension Singer : Identifiable {

}

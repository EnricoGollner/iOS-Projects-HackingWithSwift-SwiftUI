//
//  Friend+CoreDataProperties.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//
//

import CoreData
import Foundation


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var user: User?
    
    public var wrappedId: String{
        id ?? "Unknown Id"
    }
    
    public var wrappedName: String{
        name ?? "Unknown Name"
    }
    

}

extension Friend : Identifiable {

}

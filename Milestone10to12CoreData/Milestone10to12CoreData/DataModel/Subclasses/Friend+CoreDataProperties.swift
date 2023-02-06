//
//  Friend+CoreDataProperties.swift
//  Milestone10to12CoreData
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//
//

import Foundation
import CoreData


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var user: User?

}

extension Friend : Identifiable {

}

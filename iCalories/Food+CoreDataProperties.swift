//
//  Food+CoreDataProperties.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//
//

import Foundation
import CoreData


extension Food {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Food> {
        return NSFetchRequest<Food>(entityName: "Food")
    }

    @NSManaged public var calories: Double
    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Food : Identifiable {

}

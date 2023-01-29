//
//  Country+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 29/01/23.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var shortName: String?
    @NSManaged public var fullName: String?
    @NSManaged public var candy: NSSet?  //  Objective-C data type that is the equivalent of Swift's modern Set
    
    public var wrappedShortName: String{
        shortName ?? "Unknown Country"
    }
    
    public var wrappedFullName: String{
        fullName ?? "Unknown Country"
    }
    
    public var candyArray: [Candy]{
        let set = candy as? Set<Candy> ?? []  // Converting NSSet to a Set of Candy and if it fails, it'll return nil so we use nil coalescing to return an empty Set
        
        // Sorting a Set, automattically returns an Array and It's an Array of custom types so we can't just use sorted, instead, we provide a condition saying "How to sort it":
        return set.sorted{
            $0.wrappedName < $1.wrappedName // Alphabetical order
        }
    }
}

// MARK: Generated accessors for candy
extension Country {

    @objc(addCandyObject:)
    @NSManaged public func addToCandy(_ value: Candy)

    @objc(removeCandyObject:)
    @NSManaged public func removeFromCandy(_ value: Candy)

    @objc(addCandy:)
    @NSManaged public func addToCandy(_ values: NSSet)

    @objc(removeCandy:)
    @NSManaged public func removeFromCandy(_ values: NSSet)

}

extension Country : Identifiable {

}

//
//  User+CoreDataProperties.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//
//

import Foundation
import CoreData


extension User {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }
    
    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var company: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var friends: NSSet?
    
    public var wrappedId: String{
        id ?? "Unknown Id"
    }
    
    public var wrappedName: String{
        name ?? "Unknown Name"
    }
    
    public var wrappedCompany: String{
        company ?? "Unknown Name"
    }
    
    public var wrappedAge: Int16{
        age
    }
    
    public var wrappedIsActive: Bool{
        isActive
    }
    
    public var checkIsActive: String{
        isActive ? "✅" : "❌"
    }
    
    public var friendsArray: [Friend]{
        let set = friends as? Set<Friend> ?? []
        
        return set.sorted{
            $0.wrappedName < $1.wrappedName
        }
    }

}

// MARK: Generated accessors for friends
extension User {

    @objc(addFriendsObject:)
    @NSManaged public func addToFriends(_ value: Friend)

    @objc(removeFriendsObject:)
    @NSManaged public func removeFromFriends(_ value: Friend)

    @objc(addFriends:)
    @NSManaged public func addToFriends(_ values: NSSet)

    @objc(removeFriends:)
    @NSManaged public func removeFromFriends(_ values: NSSet)

}

extension User : Identifiable {

}

//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 28/01/23.
//

import SwiftUI

struct FilteredListNotFurther: View {
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    
    var body: some View {
        List(fetchRequest, id: \.self){ singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    init(filter: String){
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH[c] %@", filter))
    }
}


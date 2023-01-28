//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 28/01/23.
//

import SwiftUI

struct FilteredList: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest var fetchRequest: FetchedResults<Singer>  // we don’t create the fetch request here, because we still don’t know what we’re searching for. Instead, we’re going to create a custom initializer that accepts a filter string and uses that to set the fetchRequest property.
    
    var body: some View {
        List{
            ForEach(fetchRequest, id: \.self){ singer in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
            .onDelete(perform: deleteSinger)
        }
    }
    
    func deleteSinger(at offsets: IndexSet){
        offsets.map{ fetchRequest[$0] }.forEach( moc.delete )
        
        try? moc.save()
    }
    
    init(filter: String) {
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastName BEGINSWITH[c] %@", filter)) // You see, we’re not writing to the fetched results object inside our fetch request, but instead writing a wholly new fetch request
    }
}

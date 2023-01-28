//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 28/01/23.
//

import CoreData
import SwiftUI

struct FilteredListFurther<T: NSManagedObject, Content: View>: View {
    @Environment(\.managedObjectContext) var moc  // Only used to delete the data
    
    @FetchRequest var fetchRequest: FetchedResults<T>  // we don’t create the fetch request here, because we still don’t know what we’re searching for. Instead, we’re going to create a custom initializer that accepts a filter string and uses that to set the fetchRequest property.
    
    let content: (T) -> Content
    
    var body: some View {
        List{
            ForEach(fetchRequest, id: \.self){ item in
                self.content(item)
            }
            .onDelete(perform: deleteSinger)
        }
    }
    
    func deleteSinger(at offsets: IndexSet){
        offsets.map{ fetchRequest[$0] }.forEach( moc.delete )
        
        try? moc.save()
    }
    
    init(filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content ) {
        _fetchRequest = FetchRequest<T>(sortDescriptors: [], predicate: NSPredicate(format: "%K BEGINSWITH[c] %@", filterKey, filterValue)) // We’re not writing to the fetched results object inside our fetch request, but instead writing a wholly new fetch request
        self.content = content
    }
}

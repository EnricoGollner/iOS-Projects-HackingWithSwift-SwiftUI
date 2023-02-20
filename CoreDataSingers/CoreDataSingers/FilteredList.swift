//
//  FilteredList.swift
//  CoreDataSingers
//
//  Created by Enrico Sousa Gollner on 31/01/23.
//

import CoreData
import SwiftUI

struct FilteredList<T: NSManagedObject, Content: View>: View {
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest var fetchRequest: FetchedResults<T>
    
    let content: (T) -> Content
    
    var body: some View {
        List{
            ForEach(fetchRequest, id: \.self){ item in
                self.content(item)
            }
            .onDelete(perform: deleteSingers)
        }
    }
    
    func deleteSingers(at offsets: IndexSet){
        offsets.map{ fetchRequest[$0] }.forEach(moc.delete)
        
        try? moc.save()
    }
    
    init(filterKey: String, filterValue: String, predicate: String, sortDescriptors: [SortDescriptor<T>], @ViewBuilder content: @escaping (T) -> Content){
        _fetchRequest = FetchRequest(sortDescriptors: sortDescriptors, predicate: NSPredicate(format: "%K \(predicate) %@", filterKey, filterValue))
        self.content = content
    }
}


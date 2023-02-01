//
//  ContentView.swift
//  CoreDataSingers
//
//  Created by Enrico Sousa Gollner on 31/01/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    @State private var filterLastName = "A"
        
    enum Predicates: String{
        case beginsWith = "BEGINSWITH"
        case beginsWithInsensitive = "BEGINSWITH[c]"
        case contains = "CONTAINS"
        case containsInsensitive = "CONTAINS[c]"
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                
                FilteredList(filterKey: "lastName", filterValue: filterLastName, predicate: Predicates.beginsWith.rawValue, sortDescriptors: [
                    SortDescriptor<Singer>(\.firstName)
                ]) { (singer: Singer) in
                    Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
                    
                }
                
                Button("Add Example"){
                    let singer1 = Singer(context: moc)
                    singer1.firstName = "Taylor"
                    singer1.lastName = "Swift"
                    
                    let singer2 = Singer(context: moc)
                    singer2.firstName = "Ed"
                    singer2.lastName = "Sheeran"
                    
                    let singerEqual = Singer(context: moc)
                    singerEqual.firstName = "Ed"
                    singerEqual.lastName = "Sheeran"
                    
                    
                    let singer3 = Singer(context: moc)
                    singer3.firstName = "Adele"
                    singer3.lastName = "Adkins"
                    
                    try? moc.save()
                }
                
                Button("Show A"){
                    filterLastName = "A"
                }
                
                Button("Show S"){
                    filterLastName = "S"
                }
            }
            .toolbar{
                EditButton()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

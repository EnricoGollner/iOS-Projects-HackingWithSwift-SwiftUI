////
////  ContentView.swift
////  CoreDataProject
////
////  Created by Enrico Sousa Gollner on 22/01/23.
///
///
///
//  For this project, create an Entity "Ship" with Attributes "name" and "universe"in a Data Model to load the code
//
//import CoreData
//import SwiftUI
//
//struct ContentView: View {
//    @Environment(\.managedObjectContext) var moc
//    // @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "universe IN %@", ["Aliens", "Firefly", "Star Trek"])) var ships: FetchedResults<Ship>
//
//    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "name CONTAINS[c] %@", "d")) var ships: FetchedResults<Ship>

// @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "NOT name BEGINSWITH[c] %@", "e"))  // Negative
//
//    var body: some View{
//        NavigationStack{
//            VStack{
//                List{
//                    ForEach(ships, id: \.self){ ship in
//                        Text(ship.name ?? "Unknown Name")
//                    }
//                    .onDelete(perform: removeShip)
//                }
//
//                Button("Add Exemples"){
//                    let ship1 = Ship(context: moc)
//                    ship1.name = "Enterprise"
//                    ship1.universe = "Star Trek"
//
//                    let ship2 = Ship(context: moc)
//                    ship2.name = "Defiant"
//                    ship2.universe = "Star Trek"
//
//                    let ship3 = Ship(context: moc)
//                    ship3.name = "Millenium Falcon"
//                    ship3.universe = "Star Wars"
//
//                    let ship4 = Ship(context: moc)
//                    ship4.name = "Executor"
//                    ship4.universe = "Star Wars"
//
//                    try? moc.save()
//                }
//            }
//            .toolbar{
//                EditButton()
//            }
//        }
//    }
//
//    func removeShip(at offsets: IndexSet){
//        for offset in offsets{
//            moc.delete(ships[offset])
//        }
//
//        try? moc.save()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

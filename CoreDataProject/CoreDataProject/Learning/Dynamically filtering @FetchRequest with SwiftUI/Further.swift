////
////  ContentView.swift
////  CoreDataProject
////
////  Created by Enrico Sousa Gollner on 22/01/23.
////
//
//
//// To use this: You'll need to create an Entity called "Singer" that holds 2 Attributes strings: "firstName" and "lastName"
//
//import CoreData
//import SwiftUI
//
//struct Further: View {
//    @Environment(\.managedObjectContext) var moc
//    @State private var lastNameFilter = "A"
//    
//    var body: some View{
//        NavigationStack{
//            VStack{
//                FilteredListFurther(filterKey: "lastName", filterValue: lastNameFilter){ (singer: Singer) in
//                    Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
//                }
//                
//                Button("Add Examples"){
//                    let taylor = Singer(context: moc)
//                    taylor.firstName = "Taylor"
//                    taylor.lastName = "Swift"
//                    
//                    let ed = Singer(context: moc)
//                    ed.firstName = "Ed"
//                    ed.lastName = "Sheeran"
//                    
//                    let adele = Singer(context: moc)
//                    adele.firstName = "Adele"
//                    adele.lastName = "Adkins"
//                    
//                    try? moc.save()
//                }
//                
//                Button("Show A"){
//                    lastNameFilter = "A"
//                }
//                
//                Button("Show S"){
//                    lastNameFilter = "S"
//                }
//            }
//            .toolbar{
//                EditButton()
//            }
//        }
//    }
//}

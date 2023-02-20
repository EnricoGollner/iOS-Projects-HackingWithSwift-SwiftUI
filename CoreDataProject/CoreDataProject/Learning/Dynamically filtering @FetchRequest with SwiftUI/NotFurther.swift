////
////  NotFurther.swift
////  CoreDataProject
////
////  Created by Enrico Sousa Gollner on 28/01/23.
////
//
//
//// To use this: You'll need to create an Entity called "Singer" that holds 2 Attributes strings: "firstName" and "lastName"
//
//import SwiftUI
//
//struct NotFurther: View {
//    @Environment(\.managedObjectContext) var moc
//    @State private var lastNameFilter = "a"
//    
//    var body: some View {
//        NavigationStack{
//            VStack{
//                FilteredListNotFurther(filter: lastNameFilter)
//                
//                Button("Add Example"){
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
//                Button("Show S"){
//                    lastNameFilter = "S"
//                }
//            }
//        }
//    }
//}
//
//struct NotFurther_Previews: PreviewProvider {
//    static var previews: some View {
//        NotFurther()
//    }
//}

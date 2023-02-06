//
//  Milestone10to12CoreDataApp.swift
//  Milestone10to12CoreData
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//

import SwiftUI

@main
struct Milestone10to12CoreDataApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

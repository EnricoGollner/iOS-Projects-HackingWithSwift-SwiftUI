//
//  CoreDataSingersApp.swift
//  CoreDataSingers
//
//  Created by Enrico Sousa Gollner on 31/01/23.
//

import SwiftUI

@main
struct CoreDataSingersApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

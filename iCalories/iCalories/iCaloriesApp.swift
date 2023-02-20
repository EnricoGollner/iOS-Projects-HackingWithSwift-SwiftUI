//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 13/01/23.
//

import SwiftUI

@main
struct iCaloriesApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

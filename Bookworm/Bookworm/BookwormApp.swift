//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 10/01/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

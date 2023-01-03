//
//  ContentView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var activitesList = [Activities]()
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    Text("Item")
                }
            }
            .navigationTitle("Habit Tracking")
            .toolbar{
                Button{
                    // Add the habit
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

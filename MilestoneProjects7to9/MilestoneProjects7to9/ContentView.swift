//
//  ContentView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingAddView = false
    
    @StateObject var activities = Activities()
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(activities.listOfActivities){ activity in
                        ActivityListedView(title: activity.activityTitle, description: activity.activiteDescription, times: activity.timesDone)
                    }
                }
            }
            .navigationTitle("Habit Tracking")
            .toolbar{
                
                Button{
                    isShowingAddView = true
                } label: {
                    Image(systemName: "plus")
                }
                
                EditButton()
            }
            .sheet(isPresented: $isShowingAddView){
                AddActivityView(activities: activities)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

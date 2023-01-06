//
//  InitialView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 06/01/23.
//

import SwiftUI

struct InitialView: View {
    @State private var isShowingAddView = false
    
    @StateObject var activities = Activities()
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(activities.listOfActivities){ activity in
                        ActivityListedView(activities: activities, id: activity.id, title: activity.activityTitle, description: activity.activiteDescription, times: activity.timesDone)
                    }
                    .onDelete(perform: removeRows)
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
    
    func removeRows(at offsets: IndexSet){
        activities.listOfActivities.remove(atOffsets: offsets)
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}

//
//  ActivityListedView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import SwiftUI

struct ActivityListedView: View{
    @ObservedObject var activities: Activities
    var id: UUID
    
    @State  var title = ""
    @State  var description = ""
    @State  var times = 0

    var body: some View{
        NavigationLink{
            DescriptionActivityView(activities: activities, id: id, title: title, description: description, times: times)
            
        } label: {
            VStack(alignment: .leading, spacing: 5){
                Text(title)
                    .font(.title)
                    .bold()
                
                HStack(spacing: 2){
                    Image(systemName: "flag")
                    
                    Text("\(times) \(times != 1 ? "times" : "time")")
                }
                
                Text("\(description)")
            }
        }
        .onAppear{
            getUpdatedActivities(idPassed: id, times: times)
        }
        
    }
    
    func getUpdatedActivities(idPassed: UUID, times: Int) {
       guard let currentItemIndex = activities.listOfActivities.firstIndex(where: {
           $0.id == idPassed
       }) else{
           fatalError("Couldn't get the activity item.")
       }
        
        self.times = activities.listOfActivities[currentItemIndex].timesDone
    }
}

struct ActivityListedView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListedView(activities: Activities(), id: UUID())
    }
}

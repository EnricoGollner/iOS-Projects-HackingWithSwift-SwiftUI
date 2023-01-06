//
//  DescriptionActivityView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 04/01/23.
//

import SwiftUI

struct DescriptionActivityView: View{
    
    @ObservedObject var activities: Activities
    var id: UUID
    
    var title = ""
    var description = ""
    @State var times = 0
    
    var body: some View{
        VStack(spacing: 15){
            Text(title)
                .font(.title)
                .bold()
            
            Text(description)
            
            Divider()
                .frame(width: 270)
            
            HStack{
                Text("You did \(title) \(times) \(times != 1 ? "times" : "time")")
                Button{
                    if times > 0{
                        times -= 1
                    }
                    
                    updateAnActivity(idPassed: id, times: times)
                    
                } label: {
                    Image(systemName: "minus.circle")
                }
            }
            
            ButtonsToSet(buttonTitle: "Completed!", buttonBackground: .blue, buttonAction: addTimes)
        }
        .padding(20)
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.5, y: 0.5)
        .padding(20)
    }
    
    func addTimes(){
        times += 1
        updateAnActivity(idPassed: id, times: times)
    }
    
    func updateAnActivity(idPassed: UUID, times: Int) {
       guard let currentItemIndex = activities.listOfActivities.firstIndex(where: {
           $0.id == idPassed
       }) else{
           fatalError("Couldn't get the activity item.")
       }
        
        activities.listOfActivities[currentItemIndex].timesDone = self.times
    }
    
}

struct DescriptionActivityView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionActivityView(activities: Activities(), id: UUID())
    }
}

//
//  AddItemView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import SwiftUI

struct AddActivityView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var activities: Activities
    
    @State private var title = ""
    @State private var description = ""
    @State private var times = 0
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .center){
                    Text("New Activity")
                        .font(.largeTitle)
                        .bold()
                }
                
                TextField("Title", text: $title)
                    .padding()
                
                TextField("Description", text: $description)
                    .padding()
                
                HStack(spacing: 10){
                    Button{
                        times -= 1
                    } label: {
                        Image(systemName: "minus")
                    }
                                
                    Text("\(times)")
                    Button{
                        times += 1
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .toolbar{
                Button("Save"){
                    // Save the active
                    let item = ActivityItem(activityTitle: title, activiteDescription: description, timesDone: times)
                    
                    activities.listOfActivities.append(item)
                    
                    dismiss()
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView(activities: Activities())
    }
}

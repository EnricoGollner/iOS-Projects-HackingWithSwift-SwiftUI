//
//  AddItemView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import SwiftUI

struct ButtonsToSet: View{
    var buttonTitle: String
    var buttonBackground: Color
    
    var buttonAction: () -> Void
    
    var body: some View{
        Button(buttonTitle){
            buttonAction()
        }
        .frame(width: 100, height: 40)
        .foregroundColor(.white)
        .background(buttonBackground)
        .clipShape(Capsule())
        .shadow(color: .gray, radius: 2, x: 1, y: 1)
    }
}

struct ButtonLabelToTimes: View{
    var imgSystemName: String
    
    var body: some View{
        VStack{
            Image(systemName: imgSystemName)
        }
        .frame(width: 30, height: 30)
        .background(.white)
        .cornerRadius(100)
        .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
    }
}

struct AddActivityView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var activities: Activities
    
    @State private var title = ""
    @State private var description = ""
    @State private var times = 0
    
    @FocusState private var isFocusedOnTxt: Bool
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 17){
                
                VStack(alignment: .center){
                    Text("New Activity")
                        .font(.largeTitle)
                        .bold()
                }
                    
                HStack(spacing: 10){
                    Image(systemName: "t.square")
                    
                    TextField("Title", text: $title)
                        .focused($isFocusedOnTxt)
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray)
                )
                
                HStack(alignment: .top, spacing: 10){
                    Image(systemName: "note.text")
                    
                    TextField("Description", text: $description, axis: .vertical)
                        .lineLimit(3)
                        .focused($isFocusedOnTxt)
                }
                .padding([.horizontal, .bottom])
                .frame(height: 90)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray)
                )
                
                Text("Times done")
                    .font(.headline)
                HStack(spacing: 10){
                    Button{
                        if times > 0{
                            times -= 1
                        }
                    } label: {
                        ButtonLabelToTimes(imgSystemName: "minus")
                    }
                                
                    Text("\(times)")
                    
                    Button{
                        times += 1
                    } label: {
                        ButtonLabelToTimes(imgSystemName: "plus")
                    }
                }
                
                HStack(spacing: 20){
                    ButtonsToSet(buttonTitle: "Cancel", buttonBackground: .red, buttonAction: dismissSheet)
                    
                    ButtonsToSet(buttonTitle: "Create", buttonBackground: .blue, buttonAction: addItem)
                    
                }
            }
            .padding(20)
            .background(Color(UIColor.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.5, y: 0.5)
            .padding(20)
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    Button("Done"){ isFocusedOnTxt = false }
                }
            }
            
          Spacer()
        }
    }
    
    func addItem(){
        let item = ActivityItem(activityTitle: title, activiteDescription: description, timesDone: times)
        
        activities.listOfActivities.append(item)
        
        dismiss()
    }
    
    func dismissSheet(){
        dismiss()
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddActivityView(activities: Activities())
    }
}

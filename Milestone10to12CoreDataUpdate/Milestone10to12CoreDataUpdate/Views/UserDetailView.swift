//
//  UserDetailView.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//


import SwiftUI

struct UserDetailView: View {
    var user: User
    
    @State private var showFriendsList = false
    
    var body: some View {
        List{
            Section(header: Text("Name")){
                Text(user.wrappedName)
            }
            
            Section(header: Text("Age")){
                Text("\(user.wrappedAge)")
            }
            
            Section(header: Text("Company")){
                Text("\(user.wrappedCompany)")
            }
            
            Section(header: Text("Status")){
                HStack{
                    Text("\(user.checkIsActive)")
                }
            }
            
            Section{
                Toggle("Show Friends", isOn: $showFriendsList.animation())
                
                if showFriendsList{
                    NavigationLink{
                        FriendsListView(userFriends: user.friendsArray)
                    } label: {
                        Label("Show Friends List: \(user.friendsArray.count) friends", systemImage: "eye")
                    }
                }
            }
        }
        .listStyle(.inset)
    }
}

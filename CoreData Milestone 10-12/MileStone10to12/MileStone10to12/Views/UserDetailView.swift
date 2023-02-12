//
//  UserDetailView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 03/02/23.
//

import SwiftUI

struct UserDetailView: View {
    
    let users: [LoadedUser]
    
    @State var user: LoadedUser
    
    @State var userFriend: LoadedFriends?
    
    func findFriendUser(){
        guard let index = users.firstIndex(where: { $0.id == userFriend?.id }) else{
            fatalError("Couldn't find friend fetails")
        }
        
        user = users[index]
    }
    
    @State private var showFriends = false
    
    var body: some View {
        List{
            Section(header: Text("Name")){
                Text(user.name)
            }
            
            Section(header: Text("Age")){
                Text("\(user.age)")
            }
            
            Section(header: Text("Company")){
                Text(user.company ?? "No company")
            }
            
            Section(header: Text("Status")){
                Text("\(user.isActive ? "✅" : "❌")")
            }
            
            Section(header: Text("Swip to show the friends")){
                Toggle(isOn: $showFriends){
                    Text("Show \(user.name)'s firends")
                }
            }
            
            if showFriends{
                Section(header: Text("\(user.name)'s friends")){
                    NavigationLink{
                        FriendsListView(users: users, user: user)
                    } label: {
                        Label("Show \(user.name)'s firends", systemImage: "eye")
                    }
                }
            }
        }
        .listStyle(.grouped)
        .onAppear{
            if userFriend != nil{
                findFriendUser()
            }
        }
    }
}

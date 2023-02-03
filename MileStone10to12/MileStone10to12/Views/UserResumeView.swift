//
//  UserResumeView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import SwiftUI

struct UserResumeView: View {
    var users: [LoadedUser]
    
    var body: some View {
        List{
            ForEach(users) { user in
                NavigationLink{
                    UserDetailView(user: user)
                } label: {
                    HStack{
                        VStack(alignment: .leading){
                            Text("\(user.name)")
                                .font(.headline)
                            Text("Age: \(user.age)")
                        }
                        Spacer()
                        VStack{
                            Text("\(user.isActive ? "✅" : "❌")")
                                .padding(.bottom, 2)
                            Text("\(user.isActive ? "Online" : "Offline")")
                                .font(.caption)
                                .foregroundColor(user.isActive ? .green : .red)
                        }
                    }
                }
                UserResumeView(users: users)
            }
            .onDelete(perform: deleteUser)
        }
    }
    
    func deleteUser(at offsets: IndexSet){
        for offset in offsets{
            users.remove(at: offset)
        }
    }

}


struct UserDetailView: View {
    let user: LoadedUser
    
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
                        FriendsListView(user: user)
                    } label: {
                        Label("Show \(user.name)'s firends", systemImage: "eye")
                    }
                }
            }
        }
        .listStyle(.grouped)
    }
}


//
//  UserResumeView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import SwiftUI

struct UserResumeView: View {
    @State var users = [LoadedUser]()
    
    var body: some View {
        List{
            ForEach(users) { user in
                NavigationLink{
                    UserDetailView(users: users, user: user)
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
            }
            .onDelete(perform: deleteUser)
        }
        .listStyle(.plain)
        .navigationTitle("FriendFace")
        .toolbar{
            EditButton()
        }
        .task {
            if users.isEmpty{
                users = await Helpers().loadData()
            }
        }
    }
    
    func deleteUser(at offsets: IndexSet){
        for offset in offsets{
            users.remove(at: offset)
            
        }
    }
}

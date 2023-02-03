//
//  FriendsListView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import SwiftUI

struct FriendsListView: View {
    
    let users: [LoadedUser]
    
    @State var user: LoadedUser
    
    var body: some View {
        List{
            ForEach(user.friends, id: \.id){ friend in
                NavigationLink{
                    UserDetailView(users: users, user: user, userFriend: friend)
                } label: {
                    Text( friend.name ??  "Unknown Friend")
                }
            }
        }
        .listStyle(.plain)
    }
    
    func findFriendsDetails(users: [LoadedUser]){
        guard let userFriendIndex = users.firstIndex(where: {
            $0.name == user.name
        }) else{
            fatalError("Couldn't get the User Friend to show Details.")
        }
        
        self.user = users[userFriendIndex]
    }
}


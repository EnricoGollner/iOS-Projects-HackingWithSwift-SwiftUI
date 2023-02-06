//
//  FriendsListView.swift
//  Milestone10to12CoreData
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//

import SwiftUI

struct FriendsListView: View {
    var userFriends: [Friend]
    
    var body: some View {
        List{
            ForEach(userFriends){ friends in
                Text(friends.wrappedName)
            }
        }
    }
}


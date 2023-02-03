//
//  UserResumeView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 02/02/23.
//

import SwiftUI

struct UserResumeView: View {
    let user: LoadedUser
    
    var body: some View {
        NavigationLink{
            
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
}

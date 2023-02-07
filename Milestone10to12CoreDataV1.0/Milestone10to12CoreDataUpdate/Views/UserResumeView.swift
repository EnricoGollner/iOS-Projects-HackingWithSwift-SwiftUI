//
//  UserResumeView.swift
//  Milestone10to12CoreDataUpdate
//
//  Created by Enrico Sousa Gollner on 06/02/23.
//

import CoreData
import SwiftUI

struct UserResumeView: View {
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.name)
    ]) var usersCD: FetchedResults<User>
    
    @State var responseUsers = [LoadedUser]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(usersCD) { user in
                    NavigationLink{
                        UserDetailView(user: user)
                    } label: {
                        HStack{
                            VStack(alignment: .leading){
                                Text(user.wrappedName)
                                Text("Age: \(user.wrappedAge)")
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .center){
                                Text("\(user.checkIsActive)")
                                    .padding(.bottom, 2)
                                Text("\(user.wrappedIsActive ? "Online" : "Offline")")
                                    .font(.caption)
                                    .foregroundColor(user.isActive ? .green : .red)
                            }
                        }
                    }
                }
            }
            .navigationTitle("FriendFace")
            .listStyle(.plain)
            .task{
                if usersCD.isEmpty {
                    await loadData()
                    
                    await MainActor.run {
                        for user in responseUsers {
                            let newUser = User(context: moc)
                            newUser.name = user.name
                            newUser.id = user.id
                            newUser.isActive = user.isActive
                            newUser.age = Int16(user.age)
                            newUser.company = user.company
                            
                            for friend in user.friends {
                                let newFriend = Friend(context: moc)
                                newFriend.id = friend.id
                                newFriend.name = friend.name
                                newFriend.user = newUser
                            }
                        }
                    }
                }
            }
        }
    }
    
    func loadData() async{
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
            fatalError("Bad URL")
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode([LoadedUser].self, from: data){
                responseUsers = decodedResponse
            }
            
        } catch{
            print("Couldn't load data")
        }
    }
}

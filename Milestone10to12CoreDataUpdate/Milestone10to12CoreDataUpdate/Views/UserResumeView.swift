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
                
            }
        }
    }
    
    func saveToCD(moc: NSManagedObjectContext, loadedUsers: [LoadedUser]){
        loadedUsers.forEach{ response in
            let newUserCD = User(context: moc)
            newUserCD.id = response.id
            newUserCD.name = response.name
            newUserCD.age = Int16(response.age)
            newUserCD.company = response.company
            newUserCD.isActive = response.isActive
            
            for i in 0..<responseUsers.count{
                for friend in responseUsers[i].friends{
                    let newFriend = Friend(context: moc)
                    newFriend.id = friend.id
                    newFriend.name = friend.name
                }
            }
            
        /*
            do{
                if moc.hasChanges{
                    try moc.save()
                    print("Saved")
                }
            } catch{
                print("Couldn't save!")
            }
        */
        }
        
        
    }
    
    
    func loadData() async{
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
            print("Bad URL")
            return
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

//
//  ContentView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 01/02/23.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @State private var users = [LoadedUser]()
    
    var body: some View{
        NavigationStack{
            List{
                ForEach(users) { user in
                    UserResumeView(user: user)
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
                    await loadData()
                }
            }
        }
    }
    
    func loadData() async{
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
            print("Invalid Url")
            fatalError()
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode([LoadedUser].self, from: data){
                users = decodedResponse
            }

        } catch{
            print("Invalid Data")
        }
    }
    
    func deleteUser(at offsets: IndexSet){
        for offset in offsets{
            users.remove(at: offset)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

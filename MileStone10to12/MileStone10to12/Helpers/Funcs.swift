//
//  Funcs.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 03/02/23.
//

import Foundation

class Helpers{
    func loadData() async -> [LoadedUser]{
        var users = [LoadedUser]()
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
        
        return users
    }
}

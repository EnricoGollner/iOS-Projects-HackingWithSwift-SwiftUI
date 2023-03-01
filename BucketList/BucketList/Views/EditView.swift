//
//  EditView.swift
//  BucketList
//
//  Created by Enrico Sousa Gollner on 26/02/23.
//

import SwiftUI

struct EditView: View {
    @Environment(\.dismiss) var dismiss
    var location: Location
    var onSave: (Location) -> Void
    
    @State private var newName: String
    @State private var newDescription: String
    
    var body: some View{
        NavigationStack{
            VStack{
                Form{
                    Section{
                        TextField("Place name", text: $newName)
                        TextField("Description", text: $newDescription)
                    }
                }
            }
            .navigationTitle("Place details")
            .toolbar{
                Button("Save"){
                    var newLocation = location
                    newLocation.id = UUID()  // Because of the equatable func - if the id is the same, the object is the same, so it wouldn't make the changes, so we're forcing it, changing the id -
                    newLocation.name = newName
                    newLocation.description = newDescription
                    
                    onSave(newLocation)
                    dismiss()
                }
            }
        }
    }
    
    init(location: Location, onSave: @escaping (Location) -> Void){
        self.location = location
        self.onSave = onSave
        
        _newName = State(initialValue: location.name)
        _newDescription = State(initialValue: location.description)
        
        
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(location: Location.example){ _ in }
    }
}

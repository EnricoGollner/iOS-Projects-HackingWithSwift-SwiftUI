//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View{
        VStack{
            List(wizards, id: \.self){ wizard in
                Text(wizard.name ?? "Unknown Name")
            }
            
            Button("Add"){
                let wizard = Wizard(context: moc)
                wizard.name = "Harry Potter"
            }
            
            Button("Save"){
                do{
                    if moc.hasChanges{
                        try moc.save()
                    } else{
                        print("No changes, no work needed.")
                    }
                } catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

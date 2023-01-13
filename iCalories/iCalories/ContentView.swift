//
//  ContentView.swift
//  iCalories
//
//  Created by Enrico Sousa Gollner on 13/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddCalView = false
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(0..<10){
                        Text("\($0)")
                    }
                }
                .listStyle(.plain)
            }
            .sheet(isPresented: $showAddCalView){
                AddCalView()
            }
            .navigationTitle("iCalories")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showAddCalView = true
                    } label: {
                        Image(systemName: "plus.circle")
                    }
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

//
//  ContentView.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 15/12/22.
//

import SwiftUI

struct MissionsLayoutModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbarBackground(Color.darkBackground, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        
    }
}

extension View{
    func missionLayoutStyle() -> some View{
        modifier(MissionsLayoutModifier())
    }
}

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    @State private var showAsGrid = false
    
    var body: some View {
        NavigationView{
            VStack{
                if showAsGrid{
                    MissionLayoutGridView(astronauts: astronauts, missions: missions, columns: columns)
                        .missionLayoutStyle()
                } else{
                    MissionLayoutListView(astronauts: astronauts, missions: missions)
                        .missionLayoutStyle()
                }
            }
            .toolbar{
                Button{
                    showAsGrid.toggle()
                } label: {
                    showAsGrid ? Text("Show as Lists") : Text("Show as Grids")
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

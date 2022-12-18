//
//  ContentView.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 15/12/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    let mission: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack{
            Text("\(astronauts.count)")
            Text("\(mission.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }
}

//
//  MissionLayoutGridView.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 18/12/22.
//

import SwiftUI

struct MissionLayoutGridView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    let columns: [GridItem]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(missions) { mission in
                    NavigationLink{
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        VStack{
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                            
                            VStack{
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(.lightBackground)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.lightBackground)
                        )
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct MissionLayoutGridView_Previews: PreviewProvider {
    static var astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionLayoutGridView(astronauts: astronauts, missions: missions, columns: [GridItem(.adaptive(minimum: 150))])
    }
}

//
//  AstronautView.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 18/12/22.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        GeometryReader{ geo in
            ScrollView{
                VStack{
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.97)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.bottom)
                    
                    Text(astronaut.description)
                        .padding()
                        .foregroundColor(.white)
                }
            }
            .background(.darkBackground)
            .navigationTitle(astronaut.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AstronautView_Previews: PreviewProvider {
    static var astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts["armstrong"]!)
    }
}

//
//  Studying2.swift
//  Drawing
//
//  Created by Enrico Sousa Gollner on 31/12/22.
//

import SwiftUI

struct Studying2: View {
    @State private var amountAppearing = 0.0
    
    @State private var amountSaturation = 0.0
    
    var body: some View {
        VStack{
            Spacer()
            
            ZStack{
                Image("Example")
                    .resizable()
                    .scaledToFit()
                
                Rectangle()
                    .fill(.red)
                    .blendMode(.multiply)
            }
            .frame(width: 300)
                
            
            Spacer()
            
            ZStack{
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .offset(x: -50, y: 80)
                    .frame(width: 200 * amountAppearing)
                    .blendMode(.screen)

                Circle()
                    .fill(Color(red: 0, green: 1, blue: 0))
                    .frame(width: 200 * amountAppearing)
                    .offset(x: 50, y: 80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 0, blue: 1))
                    .frame(width: 200 * amountAppearing)
                    .blendMode(.screen)
                
            }
            .frame(width: 300, height: 300)
            
            Spacer()
            
            Slider(value: $amountAppearing)
                .padding()
            
            Spacer()
            
            Image("Example")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .saturation(amountSaturation)
                .blur(radius: (1 - amountSaturation) * 20)
            
            Slider(value: $amountSaturation)
                .padding()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct Studying2_Previews: PreviewProvider {
    static var previews: some View {
        Studying2()
    }
}

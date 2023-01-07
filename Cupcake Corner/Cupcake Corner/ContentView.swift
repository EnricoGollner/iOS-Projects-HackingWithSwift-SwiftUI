//
//  ContentView.swift
//  Cupcake Corner
//
//  Created by Enrico Sousa Gollner on 07/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentValue = 0.0
    
    var body: some View {
        List(0..<10){
            Label("Golf \($0)", systemImage: "car")
        }
        .refreshable {
            print("[Carregando...]")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

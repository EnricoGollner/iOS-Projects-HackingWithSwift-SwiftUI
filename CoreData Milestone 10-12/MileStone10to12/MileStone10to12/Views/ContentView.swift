//
//  ContentView.swift
//  MileStone10to12
//
//  Created by Enrico Sousa Gollner on 01/02/23.
//

import CoreData
import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationStack{
            UserResumeView()
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

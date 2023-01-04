//
//  ActivityListedView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 03/01/23.
//

import SwiftUI

struct ActivityListedView: View{
    @State  var title = ""
    @State  var description = ""
    @State  var times = 0

    var body: some View{
        NavigationLink{
            Text("Description")
        } label: {
            VStack(alignment: .leading, spacing: 5){
                Text(title)
                    .font(.title)
                    .bold()
                
                HStack(spacing: 2){
                    Image(systemName: "flag")
                    
                    Text("\(times) \(times != 1 ? "times" : "time")")
                }
                
                Text("Description")
            }
        }
    }
}

struct ActivityListedView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListedView()
    }
}

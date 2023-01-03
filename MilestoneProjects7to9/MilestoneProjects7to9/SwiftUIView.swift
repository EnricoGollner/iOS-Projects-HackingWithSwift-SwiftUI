//
//  SwiftUIView.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 02/01/23.
//

import SwiftUI

struct SwiftUIView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var user: User
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("\(user.firstName)")
            }
            .toolbar{
                Button("Dismiss"){
                    dismiss()
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(user: User())
    }
}

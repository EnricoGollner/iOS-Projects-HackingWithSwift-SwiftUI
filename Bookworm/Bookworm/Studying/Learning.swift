//
//  Learning.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 12/01/23.
//

import SwiftUI

struct PushButton: View{
    let title: String
    @Binding var isOn: Bool
    
    var onCollor = [Color.red, Color.blue]
    var offCollor = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View{
        Button(title){
            isOn.toggle()
        }
        .padding()
        .background(
            LinearGradient(colors: isOn ? onCollor : offCollor, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
    }
}

struct Learning: View {
    @State private var rememberMe = false
    
    @AppStorage("note") private var note = ""
    
    var body: some View {
        VStack{
            Toggle("Remember me", isOn: $rememberMe)
                .padding()
            
            PushButton(title: "Remember me", isOn: $rememberMe)
            
            Text("\(rememberMe ? "on" : "off")")
            
            TextEditor(text: $note)
                .padding()
                .frame(width: 300, height: 200)
                .border(.blue)
        }
    }
}

struct Learning_Previews: PreviewProvider {
    static var previews: some View {
        Learning()
    }
}

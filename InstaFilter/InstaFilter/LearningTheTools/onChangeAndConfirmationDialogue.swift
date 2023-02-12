//
//  onChangeAndConfirmationDialogue.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 12/02/23.
//

import SwiftUI

struct onChangeAndConfirmationDialogue: View {
    @State private var blurAmount = 0.0
    
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("Bluring")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
                .padding()
                .onChange(of: blurAmount){ newValue in
                    print("The new value is: \(newValue)")
                }
            
            Button("Random blur"){
                blurAmount = Double.random(in: 0...20)
            }
            
            
            Text("Confirmation Dialogue area")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change background", isPresented: $showingConfirmation){
                    Button("Red") { backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Blue") { backgroundColor = .blue }
                    Button("Cancel", role: .cancel) { }
                }
        }
    }
}

struct onChangeAndConfirmationDialogue_Previews: PreviewProvider {
    static var previews: some View {
        onChangeAndConfirmationDialogue()
    }
}

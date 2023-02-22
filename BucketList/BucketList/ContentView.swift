//
//  ContentView.swift
//  BucketList
//
//  Created by Enrico Sousa Gollner on 19/02/23.
//

import LocalAuthentication
import MapKit
import SwiftUI

struct LocationsL: Identifiable{
    let id = UUID()
    let name: String
    let coordinator: CLLocationCoordinate2D
}

struct ContentView: View{
    @State private var isUnlocked = false
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
    
    var body: some View {
        NavigationStack{
            VStack{
                if isUnlocked{
                    VStack{
                        Map(coordinateRegion: $mapRegion, annotationItems: locations){ location in
                            MapAnnotation(coordinate: location.coordinate){
                                Circle()
                                    .stroke(.red, lineWidth: 2)
                                    .frame(width: 30, height: 30)
                            }
                        }
                    }
                    .navigationTitle("London Explorer")
                } else {
                    VStack(spacing: 4){
                        Text("App Locked")
                        
                        Button("Try it again", action: authenticate)
                    }
                    
                }
            }
            .onAppear(perform: authenticate)
        }
    }
    
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            let reason = "We need you to unlock the data and the app"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){ success, authenticationError in
                if success{
                    isUnlocked = true
                } else{
                    print("There's a problem")
                }
            }
        } else {
            print("User's device have not biometrics or haven't enrolled it")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

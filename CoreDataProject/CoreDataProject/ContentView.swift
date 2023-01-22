//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//

import SwiftUI

struct Student: Hashable{
    let name: String
}

struct ContentView: View {
    var student = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]
    
    var body: some View {
        List(student, id: \.self){ student in
            Text("\(student.name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

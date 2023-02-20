//
//  StudentHashable.swift
//  CoreDataProject
//
//  Created by Enrico Sousa Gollner on 22/01/23.
//

import SwiftUI

struct Student: Hashable{
    let name: String
}

struct StudentHashable: View {
    let students = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]
    
    var body: some View {
        List(students, id: \.self){ student in
            Text("\(student.name)")
        }
    }
}

struct StudentHashable_Previews: PreviewProvider {
    static var previews: some View {
        StudentHashable()
    }
}

//
//  NotesData.swift
//  Notes Clone
//
//  Created by Enrico Sousa Gollner on 10/01/23.
//

import Foundation

class NotesData: ObservableObject{
    @Published var notes = [NoteItem]() {
        didSet{
            if let encodedNote = try? JSONEncoder().encode(notes){
                UserDefaults.standard.set(encodedNote, forKey: "Notes")
            }
        }
    }
    
    init() {
        if let savedNotes = UserDefaults.standard.data(forKey: "Notes"){
            if let decodedNotes = try? JSONDecoder().decode([NoteItem].self, from: savedNotes){
                notes = decodedNotes
                return
            }
        }
    }
}

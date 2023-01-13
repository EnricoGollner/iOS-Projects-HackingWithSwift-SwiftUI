//
//  ContentView.swift
//  Notes Clone
//
//  Created by Enrico Sousa Gollner on 10/01/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var notesData = NotesData()
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(notesData.notes){ note in
                        Section{
                            VStack{
                                NavigationLink{
                                    NoteWrittingView(notesData: notesData, idPassed: note.id)
                                } label: {
                                    VStack{
                                        Text(note.title)
                                        Text(note.noteTxt)
                                            .lineLimit(1)
                                    }
                                }
                            }
                        }
                    }
                    .onDelete(perform: removeRow)
                }
            }
            .navigationTitle("Notes")
            .toolbar{
                EditButton()
                
                NavigationLink{
                    NoteWrittingView(notesData: notesData, idPassed: UUID())
                } label: {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
    }
    
    func removeRow(at offsets: IndexSet){
        notesData.notes.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  NoteWrittingView.swift
//  Notes Clone
//
//  Created by Enrico Sousa Gollner on 10/01/23.
//

import SwiftUI

struct NoteWrittingView: View {
    @ObservedObject var notesData: NotesData
    
    @State var idPassed: UUID
    @State private var title = ""
    @State private var noteTxt = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("", text: $title, axis: .vertical)
                    .font(.title)
                    .bold()
                
                TextEditor(text: $noteTxt)
                Spacer()
            }
            .padding([.horizontal, .bottom])
            .toolbar{
                Button("Save"){
                    var aux = [NoteItem]()
                    
                    if let index = notesData.notes.firstIndex(where: {$0.id == idPassed}) {
                        aux.append(notesData.notes[index])
                    }
                    
                    if aux.isEmpty{
                        var noteItem = NoteItem(title: title, noteTxt: noteTxt)
                        
                        notesData.notes.insert(noteItem, at: 0)
                    } else{
                        updateNote()
                    }
                }
            }
        }
        .onAppear{
            guard let index = notesData.notes.firstIndex( where: {
                $0.id == idPassed
            }) else{
                print("Couldn't find the note ID.")
                return
            }
            
            if idPassed == notesData.notes[index].id{
                self.title = notesData.notes[index].title
                self.noteTxt = notesData.notes[index].noteTxt
            }
        }
    }
    
    
    
    func updateNote(){
        guard let index = notesData.notes.firstIndex( where: {
            $0.id == idPassed
        }) else{
            print("Couldn't find the note ID.")
            return
        }
        
        notesData.notes[index].title = title
        notesData.notes[index].noteTxt = noteTxt
    }
}

struct NoteWrittingView_Previews: PreviewProvider {
    static var previews: some View {
        NoteWrittingView(notesData: NotesData(), idPassed: UUID())
    }
}

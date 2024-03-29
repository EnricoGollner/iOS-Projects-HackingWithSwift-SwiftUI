//
//  DetailView.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 16/01/23.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    @State private var showingDeleteAlert = false
    
    let book: Book
    
    var bookGenre: String{
        let genre = book.getGenre()
        
        if genre.isReallyEmpty(){
            return "Unknown"
        }
        return genre
    }
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .bottomTrailing){
                
                Image(bookGenre)
                    .resizable()
                    .scaledToFit()
                
                Text(bookGenre)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
            }
            
            Text(book.author ?? "Unknown Author")
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(book.review ?? "No review")
                .padding()
            
            RatingView(rating: .constant(Int(book.rating)))
                .font(.largeTitle)
        }
        .navigationTitle(book.title ?? "Unknown Book")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Delete book?", isPresented: $showingDeleteAlert){
            Button("Delete", role: .destructive, action: deleteBook)
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Are you sure?")
        }
        .toolbar{
            Button{
                showingDeleteAlert = true
            } label: {
                Label("Delete this book", systemImage: "trash")
            }
        }
    }
    
    func deleteBook(){
        moc.delete(book)
        dismiss()
        
        try? moc.save()
    }
}

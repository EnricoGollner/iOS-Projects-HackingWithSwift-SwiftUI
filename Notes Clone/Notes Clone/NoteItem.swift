//
//  Note.swift
//  Notes Clone
//
//  Created by Enrico Sousa Gollner on 10/01/23.
//

import Foundation

struct NoteItem: Codable, Identifiable{
    let id = UUID()
    var title: String
    var noteTxt: String
}

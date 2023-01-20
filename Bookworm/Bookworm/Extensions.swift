//
//  BookExtension.swift
//  Bookworm
//
//  Created by Enrico Sousa Gollner on 19/01/23.
//

import SwiftUI

extension Book{
    func isBadRating() -> Bool{
        if self.rating == 1 {
            return true
        }
        return false
    }
    
    func getGenre() -> String{
        guard let genre = self.genre else{
            return "Question"
        }
        
        return genre
    }
}

extension String{
    func isReallyEmpty() -> Bool{
        if self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            return true
        }
        return false
    }
}

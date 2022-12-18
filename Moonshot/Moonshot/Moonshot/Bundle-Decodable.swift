//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 17/12/22.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from that bundle")
        }
        
        let decoder = JSONDecoder()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        // We're saying: "When swift finds a date, they will be in the format 'y-MM-dd', read them in so we can work with them as real dates right under text strings"
        
        
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}

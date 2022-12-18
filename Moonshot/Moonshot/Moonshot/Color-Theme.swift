//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Enrico Sousa Gollner on 18/12/22.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == Color{  // Adds the extension only if we're using Color
    static var darkBackground: Color{
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color{
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}

//
//  Color-theme.swift
//  MilestoneProjects7to9
//
//  Created by Enrico Sousa Gollner on 06/01/23.
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

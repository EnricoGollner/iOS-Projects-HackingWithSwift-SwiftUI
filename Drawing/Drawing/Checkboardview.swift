//
//  Checkboarder.swift
//  Drawing
//
//  Created by Enrico Sousa Gollner on 01/01/23.
//

import SwiftUI

struct Checkerboard: Shape{
    var rows: Int
    var columns: Int
    
    var animatableData: AnimatablePair<Double, Double>{
        get {
            AnimatablePair(Double(rows), Double(columns))
        }
        
        set{
            rows = Int(newValue.first)
            columns = Int(newValue.second)
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let rowSize = rect.height / Double(rows)
        let columnSize = rect.width / Double(columns)
        
        for row in 0..<rows{
            for column in 0..<columns{
                if (row + column).isMultiple(of: 2){
                    let startX = columnSize * Double(column)
                    let startY = rowSize * Double(row)
                    
                    let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
                    
                    path.addRect(rect)
                }
            }
        }
        return path
    }
}


struct Checkboarder: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Checkboarder_Previews: PreviewProvider {
    static var previews: some View {
        Checkboarder()
    }
}

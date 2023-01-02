//
//  ContentView.swift
//  Drawing
//
//  Created by Enrico Sousa Gollner on 20/12/22.
//

import SwiftUI

struct Arrow: Shape{
    var isBoldLine: Bool
    
    var animatableData: Bool{
        get{ isBoldLine }
        set{ isBoldLine = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY / 4))
        path.addLine(to: CGPoint(x: rect.maxX / 3, y: rect.maxY / 4))
        path.addLine(to: CGPoint(x: rect.maxX / 3, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX / 1.5, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX / 1.5, y: rect.maxY / 4))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 4))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ArrowView: View{
    @State private var isBoldLine = false
    
    var body: some View{
        Arrow(isBoldLine: isBoldLine)
            .stroke(.red, style: StrokeStyle(
                lineWidth: isBoldLine ? 20 : 5,
                lineCap: .round, lineJoin: .round))
            .onTapGesture {
                withAnimation{
                    isBoldLine.toggle()
                }
            }
    }
}

struct ColorCyclingRectangle: View{
    var amount = 0.0
    var steps = 100
    
    var startPoint = UnitPoint(x: 0.5, y: 0.0)
    var endPoint = UnitPoint(x: 0.5, y: 1.0)
    
    var body: some View{
        ZStack{
            ForEach(0..<steps){ value in
                Rectangle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(colors: [
                            color(for: value, brightness: 1),
                            color(for: value, brightness: 0.2)
                        ], startPoint: startPoint, endPoint: endPoint)
                    )
            }
        }
        .drawingGroup()  // Using Metal framework instead Core Animation
    }
    
    func color(for value: Int, brightness: Double) -> Color{
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1{
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}

struct ContentView: View {
    @State private var lineWidthAmount = 5.0
    @State private var isBoldLine = false
    @State private var colorCycle = 1.0
    
    @State private var start = UnitPoint(x: 0.5, y: 0.0)  // Top
    @State private var end = UnitPoint(x: 0.5, y: 1.0)  // Bottom
    
    var body: some View {
        // Challenges:
        VStack{
            ScrollView{
                Spacer()
                
                ArrowView()
                    .frame(width: 200, height: 300)
                
                
                Spacer()
                
                ColorCyclingRectangle(amount: colorCycle, startPoint: start, endPoint: end)
                    .frame(width: 300, height: 300)
                Slider(value: $colorCycle)
                    .padding()
                
                Group{
                    Text("Start X")
                    Slider(value: $start.x)
                        .padding([.horizontal, .bottom])
                    
                    Text("Start Y")
                    Slider(value: $start.y)
                        .padding([.horizontal, .bottom])
                    
                    Text("End X")
                    Slider(value: $end.x)
                        .padding([.horizontal, .bottom])
                    
                    Text("End Y")
                    Slider(value: $end.y)
                        .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

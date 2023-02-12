//
//  ContentView.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 11/02/23.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    
    @State private var itensityFilter = 0.0
    
    var body: some View{
        VStack{
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    
    func loadImage(){
        guard let inputImage = UIImage(named: "Example") else { return }  // Storing an UIImage
        let beginImage = CIImage(image: inputImage)  // CIImage
        
        let context = CIContext()
        let currentFilter = CIFilter.sepiaTone()
        currentFilter.inputImage = beginImage
        
        let amount = 1.0
        
        let inputKeys = currentFilter.inputKeys  // Reads what it supports (itensity, radius, scale)
        
        if inputKeys.contains(kCIInputIntensityKey){
            currentFilter.setValue(amount, forKey: kCIInputIntensityKey)
        }
        
        if inputKeys.contains(kCIInputRadiusKey){
            currentFilter.setValue(amount * 200, forKey: kCIInputRadiusKey)
        }
        
        if inputKeys.contains(kCIInputScaleKey){
            currentFilter.setValue(amount * 10, forKey: kCIInputScaleKey)
        }
        
        guard let outputImage = currentFilter.outputImage else{ return }  // CIImage
        
        if let cgImg = context.createCGImage(outputImage, from: outputImage.extent){
            let uiImage = UIImage(cgImage: cgImg)  // CGImage to UIImage
            image = Image(uiImage: uiImage)  // UIImage to SwiftUI Image
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

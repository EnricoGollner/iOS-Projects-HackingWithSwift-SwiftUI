//
//  AplyingFilter.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 14/02/23.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct AplyingFilter: View {
    @State private var image: Image?
    
    var body: some View{
        VStack{
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear{
            loadImage()
        }
    }
    
    func loadImage(){
        guard let inputImage = UIImage(named: "Example") else { return }
        let beginImage = CIImage(image: inputImage)
        
        let context = CIContext()
        let currentFilter = CIFilter.sepiaTone()
        currentFilter.inputImage = beginImage
        
        let inputKeys = currentFilter.inputKeys
        let amount = 1.0
        
        if inputKeys.contains(kCIInputIntensityKey){
            currentFilter.setValue(amount, forKey: kCIInputIntensityKey)
        }
        
        guard let outputImage = currentFilter.outputImage else { return }
        
        if let cgImage = context.createCGImage(outputImage, from: outputImage.extent){
            let uiImage = UIImage(cgImage: cgImage)
            image = Image(uiImage: uiImage)
        }
    }
}

struct AplyingFilter_Previews: PreviewProvider {
    static var previews: some View {
        AplyingFilter()
    }
}

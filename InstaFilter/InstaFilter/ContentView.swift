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
    
    @State private var filterIntensity = 0.5
    @State private var filterRadius = 100.0
    @State private var filterScale = 5.0
    
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var processedImage: UIImage?
    
    @State private var currentFilter: CIFilter = CIFilter.sepiaTone()
    
    let context = CIContext()
    
    @State private var showingFilterSheet = false
    
    var body: some View{
        NavigationStack{
            VStack{
                ZStack{
                    Rectangle()
                        .fill(.secondary)
                    
                    if let image = image{
                        image
                            .resizable()
                            .scaledToFit()
                    } else{
                        Text("Tap to select a picture")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
                .onTapGesture {
                    showingImagePicker = true
                }
                
                VStack{  // Sliders
                    HStack{
                        Text("Intensity")
                        Slider(value: $filterIntensity)
                            .onChange(of: filterIntensity) { _ in applyProcessing() }
                    }
                    
                    HStack{
                        Text("Radius")
                        Slider(value: $filterRadius, in: 0...200, step: 10)
                            .onChange(of: filterRadius) { _ in applyProcessing() }
                    }
                    
                    HStack{
                        Text("Scale")
                        Slider(value: $filterScale, in: 0...10, step: 1)
                            .onChange(of: filterScale) { _ in applyProcessing() }
                    }
                }
                .padding(.vertical)
                
                HStack{
                    Button("Change Filter"){ showingFilterSheet = true }
                    
                    Spacer()
                    
                    Button("Save", action: save)
                        .disabled(verifyToDisable())
                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("InstaFilter")
            .onChange(of: inputImage){ _ in loadImage() }
            .sheet(isPresented: $showingImagePicker){
                ImagePicker(image: $inputImage)
            }
            .confirmationDialog("Select Filter", isPresented: $showingFilterSheet) {
                Group{
                    Button("Bloom"){ setFilter(CIFilter.bloom()) }
                    Button("Crystallize") { setFilter(CIFilter.crystallize()) }
                    Button("Dither"){ setFilter(CIFilter.dither()) }
                    Button("Edges"){ setFilter (CIFilter.edges()) }
                    Button("Gaussian Blur"){ setFilter(CIFilter.gaussianBlur()) }
                    Button("Pixellate") { setFilter(CIFilter.pixellate()) }
                }
                Button("Sepia Tone") { setFilter(CIFilter.sepiaTone()) }
                Button("Unsharp Mask") { setFilter(CIFilter.unsharpMask()) }
                Button("Vignette"){ setFilter(CIFilter.vignette()) }
                Button("Vibrance"){ setFilter(CIFilter.vibrance()) }
                Button("Zoom Blur"){ setFilter(CIFilter.zoomBlur()) }
                
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Select the Filter")
            }
        }
    }
    
    func verifyToDisable() -> Bool{
        guard let _ = inputImage else { return true }
        return false
    }
    
    func loadImage(){
        guard let inputImage = inputImage else { return }
        
        let beginImage = CIImage(image: inputImage)
        currentFilter.setValue(beginImage, forKey: kCIInputImageKey)  // So the filter now knows the image to work with
        applyProcessing()
    }
    
    func applyProcessing(){
        let inputKeys = currentFilter.inputKeys
        
        if inputKeys.contains(kCIInputIntensityKey){ currentFilter.setValue(filterIntensity, forKey: kCIInputIntensityKey) }
        if inputKeys.contains(kCIInputRadiusKey){ currentFilter.setValue(filterIntensity * 200, forKey: kCIInputRadiusKey) }
        if inputKeys.contains(kCIInputScaleKey){ currentFilter.setValue(filterIntensity * 10, forKey:  kCIInputScaleKey) }
        
        guard let outputImage = currentFilter.outputImage else { return }
        
        if let cgImage = context.createCGImage(outputImage, from: outputImage.extent){
            let uiImage = UIImage(cgImage: cgImage)
            image = Image(uiImage: uiImage)
            processedImage = uiImage
        }
    }
    
    func setFilter(_ filter: CIFilter){
        currentFilter = filter
        
        loadImage()
    }
    
    func save() {
        guard let processedImage = processedImage else { return }
        
        let imageSaver = ImageSaver()
        
        imageSaver.successHandler = {
            print("Success!")
        }
        imageSaver.errorHandler = {
            print("Oops! \($0.localizedDescription)")
        }
        
        imageSaver.writeToPhotoAlbum(image: processedImage)
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

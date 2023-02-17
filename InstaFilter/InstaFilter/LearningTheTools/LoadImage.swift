//
//  LoadImage.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 17/02/23.
//

import SwiftUI

struct LoadImage: View {
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack{
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image"){
                showingImagePicker = true
            }
            
            Button("Save Image"){
                guard let inputImage = inputImage else { return }  // Making sure there's an image to save
                
                let imageSaver = ImageSaver()
                imageSaver.writeToPhotoAlbum(image: inputImage)
            }
        }
        .sheet(isPresented: $showingImagePicker){
            ImagePicker(image: $inputImage)
        }
        .onChange(of: inputImage){ _ in loadImage() }
    }
    
    func loadImage(){
        guard let uiImage = inputImage else { return }
        image = Image(uiImage: uiImage)
    }
    
}

struct LoadImage_Previews: PreviewProvider {
    static var previews: some View {
        LoadImage()
    }
}

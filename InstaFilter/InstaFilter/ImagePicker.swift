//
//  ImagePicker.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 14/02/23.
//

import PhotosUI
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable{
    @Binding var image: UIImage?
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker){
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let provider = results.first?.itemProvider else { return }
            
            if provider.canLoadObject(ofClass: UIImage.self){
                provider.loadObject(ofClass: UIImage.self){ image, _ in  // NSItemProviderReading? and Error? being passed)
                    self.parent.image = image as? UIImage  // Type conversion because the image is an optional
                }
            }
        }
    }
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)  // Passing our ImagePicker struct with the binding into the class, so we can modify the binding from there
    }
}

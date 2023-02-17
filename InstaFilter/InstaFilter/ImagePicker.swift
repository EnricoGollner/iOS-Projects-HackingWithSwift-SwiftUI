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
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate{
        var parent: ImagePicker
        
        init(_ parent: ImagePicker){
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            
            guard let provider = results.first?.itemProvider else { return }
            
            if provider.canLoadObject(ofClass: UIImage.self){
                provider.loadObject(ofClass: UIImage.self){ imageProvided, _ in
                    self.parent.image = imageProvided as? UIImage  // We use typecast because the data we’re provided could in theory be anything. Yes, I know we specifically asked for photos, but PHPickerViewControllerDelegate calls this same method for any kind of media, which is why we need to be careful.
                }
            }
        }
    }
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images  // Only images
        
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}
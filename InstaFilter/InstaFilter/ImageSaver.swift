//
//  ImageSaver.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 17/02/23.
//

import UIKit

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishedSaving error: Error?, contextInfo: UnsafeRawPointer){
        if let error = error{
            print("Error in Save Image: \(error.localizedDescription)")
            return
        }
        
        print("Save Finished!")
    }
}

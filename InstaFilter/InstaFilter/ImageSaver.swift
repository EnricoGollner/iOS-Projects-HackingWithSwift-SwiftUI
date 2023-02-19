//
//  ImageSaver.swift
//  InstaFilter
//
//  Created by Enrico Sousa Gollner on 17/02/23.
//

import UIKit

class ImageSaver: NSObject {
    var successHandler: (() -> Void)?
    var errorHandler: ((Error) -> Void)?
    
    func writeToPhotoAlbum(image: UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image: UIImage, didFinishedSaving error: Error?, contextInfo: UnsafeRawPointer){
        if let error = error{
            errorHandler?(error)
        } else {
            successHandler?()
        }
    }
}

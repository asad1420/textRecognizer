//
//  imageHandler.swift
//  textRecognize
//
//  Created by MuhammadAsad on 8/6/17.
//  Copyright © 2017 MuhammadAsad. All rights reserved.
//
import UIKit

extension imageController: UIImagePickerControllerDelegate,UINavigationControllerDelegate  {
    
   
    
    
    
   
    
    //MARK: - Take image
     func imageHandler(_ sender: UITapGestureRecognizer)  {
        var imagePicker = UIImagePickerController()
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    //MARK: - Saving Image here
    @IBAction func save(_ sender: AnyObject) {
        UIImageWriteToSavedPhotosAlbum(userImage.image!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    //MARK: - Add image to Library
    func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    //MARK: - Done image capture here
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo
        
        info: [String : Any]) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.dismiss(animated: true, completion: nil)
        userImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
}

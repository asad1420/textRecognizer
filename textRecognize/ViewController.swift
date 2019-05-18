//
//  ViewController.swift
//  textRecognize
//
//  Created by MuhammadAsad on 8/4/17.
//  Copyright © 2017 MuhammadAsad. All rights reserved.
//


import UIKit
import TesseractOCR



class ViewController: UIViewController, G8TesseractDelegate {

    @IBOutlet weak var textBlog: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        if let tessearact = G8Tesseract(language: "eng") {
        tessearact.delegate = self
        tessearact.image = UIImage(named: "demoText1")?.g8_blackAndWhite()
        tessearact.recognize()
         textBlog.text = tessearact.recognizedText
        
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func progressImageRecognition(for tesseract: G8Tesseract!) {
        print("Recognition progress \(tesseract.progress) %")
    }


}


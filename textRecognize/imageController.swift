//
//  imageController.swift
//  textRecognize
//
//  Created by MuhammadAsad on 8/6/17.
//  Copyright © 2017 MuhammadAsad. All rights reserved.
//
import UIKit

class imageController: UIViewController {

    
     @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    userImage.isUserInteractionEnabled = true
    
    userImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action:Selector(("imageHandler:"))))
    
    

}

}

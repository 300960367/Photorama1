//
//  PhotosViewController.swift
//  Photorama
//
//  Created by FERNANDO ITO on 2018-03-12.
//  Copyright © 2018 Centennial College. All rights reserved.
//  PhotosViewController.swift - Photorama User Interface
//  GitHub: https://github.com/300960367/Photorama1

//import Foundation
import UIKit

class PhotosViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos()
    }

    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!

}


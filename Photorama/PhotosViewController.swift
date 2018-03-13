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
        
        store.fetchInterestingPhotos {
            (photosResult) -> Void in
            
            switch photosResult {
            case let .success(photos):
                print ("Successfully found \(photos.count) photos.")
            case let .failure(error):
                print ("Error fetching interesting photos: \(error)")
            }
        }
    }

    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!

}


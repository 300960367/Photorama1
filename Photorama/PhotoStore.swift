//
//  PhotoStore.swift
//  Photorama
//
//  Created by FERNANDO ITO on 2018-03-12.
//  Copyright © 2018 Centennial College. All rights reserved.
//  PhotoStore.swift - responsible for initiating the web service requests.
//  GitHub: https://github.com/300960367/Photorama1

import Foundation

enum PhotoResult{
    case success([Photo])
    case failure([Error])
}

class PhotoStore {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchInterestingPhotos() {
        
        let url = FlickrAPI.interestingPhotosURL
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
            
            if let jsonData = data {
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
                    print(jsonObject)
                } catch let error {
                    print("Error creating JSON object: \(error)")
                } // do
//                if let jsonString = String(data: jsonData,
//                                           encoding: .utf8) {
//                    print(jsonString)
//                }
            } else if let requestError = error {
                print("Error fetching interesting photos: \(requestError)")
            } else {
                print("Unexpected error with the request")
            } // else
        } // let
    task.resume()
    } // func
}

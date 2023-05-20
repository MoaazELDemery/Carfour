//
//  Models.swift
//  Carfour
//
//  Created by Demery on 08/05/2023.
//

import Foundation

class Models: NSObject, Codable{
    var name: String?
    var photos: [String?]
    var photo1: String?
    var photo2: String?
    
    init(name: String?, photos: [String?], photo1: String?, photo2: String?) {
        self.name = name
        self.photos = photos
        self.photo1 = photo1
        self.photo2 = photo2
    }
}

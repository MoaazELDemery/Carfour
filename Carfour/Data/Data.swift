//
//  Data.swift
//  Carfour
//
//  Created by Demery on 01/04/2023.
//

import Foundation

class Data: NSObject, Codable{
    var name: String?
    var photo: String?
    
    init(name: String?, photo: String?) {
        self.name = name
        self.photo = photo
    }
}

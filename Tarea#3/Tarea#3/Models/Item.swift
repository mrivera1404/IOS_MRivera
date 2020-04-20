//
//  Item.swift
//  Tarea#3
//
//  Created by Maria Jose on 4/19/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import Foundation

struct Item{
    
    var identifier =  NSUUID().uuidString
    var name: String
    var quantity: Int
    var date = Date()
    var imageName: String
    
    init(name: String, quantity: Int, imageName: String, date: Date) {
        self.name = name
        self.quantity = quantity
        self.imageName = imageName
        self.date = date
    }
}

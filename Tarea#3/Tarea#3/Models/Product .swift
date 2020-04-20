//
//  Product .swift
//  Tarea#3
//
//  Created by Maria Jose on 4/19/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import Foundation

class Product{
    
    var identifier =  NSUUID().uuidString
    var nameProduct: String
    var quantity: Int
    var imageProduct: String


    init(nameProduct: String, quantity: Int, imageProduct: String) {
        self.nameProduct = nameProduct
        self.quantity = quantity
        self.imageProduct = imageProduct
    }

}

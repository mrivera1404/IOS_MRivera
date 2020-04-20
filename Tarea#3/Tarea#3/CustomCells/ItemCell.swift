//
//  ItemCell.swift
//  Tarea#3
//
//  Created by Maria Jose on 4/3/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var quantity: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
    func setupCell(item: Item) {
        itemName.text = item.name
        quantity.text = String(item.quantity)
//        date.text = item.date.getFormatted(dateStyle: .short, timeStyle: .long)
        itemImage.image = UIImage(named:item.imageName)
    }
    
}

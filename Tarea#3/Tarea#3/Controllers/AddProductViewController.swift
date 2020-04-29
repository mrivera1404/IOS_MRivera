//
//  AddProductViewController.swift
//  Tarea#3
//
//  Created by Maria Jose on 3/27/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import UIKit

protocol AddProductViewControllerProtocol: class {
    func addItem(item: Item)
}

class AddProductViewController: UIViewController {
    
    weak var delegate: AddProductViewControllerProtocol?

    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

  

}

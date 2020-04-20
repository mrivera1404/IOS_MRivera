//
//  ViewController.swift
//  Tarea#3
//
//  Created by Maria Jose on 3/26/20.
//  Copyright © 2020 Maria Jose. All rights reserved.
//

import UIKit

class ListProductsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let itemTableViewCellIdentifier  = "ItemCell"
    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCustomCell()
        createItems()
    }

    func registerCustomCell() {
        let nib = UINib(nibName: itemTableViewCellIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: itemTableViewCellIdentifier)
    }
    
    func createItems(){
        items.append(Item(name: "Product 1", quantity: 30, imageName: "product1", date: Date()))
        items.append(Item(name: "Product 2", quantity: 7, imageName: "product2", date:Date()))
        items.append(Item(name: "Product 3", quantity: 9, imageName: "product3", date:Date()))
        items.append(Item(name: "Product 4", quantity: 42, imageName: "product4", date:Date()))
        items.append(Item(name: "Product 5", quantity: 28, imageName: "product5", date:Date()))
    }
    
}


extension ListProductsViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        items = items.sorted(by: {$0.date.compare($1.date) == .orderedDescending})
        guard let cell = tableView.dequeueReusableCell(withIdentifier: itemTableViewCellIdentifier) as? ItemCell else{
            let cell = UITableViewCell()
//            cell.textLabel?.text = "NO EXISTE"
            return cell
        }
        cell.setupCell(item: items[indexPath.row])
        
        return cell
    }
}

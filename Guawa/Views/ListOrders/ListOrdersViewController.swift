//
//  ListOrdersViewController.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 31.07.2022.
//

import UIKit

class ListOrdersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id", name: "Amanat", dish: .init(id: "id1", name: "Pizza", desription: "This is the best I have ever tasted! This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!", image: "https://picsum.photos/100/200", calories: 555)),
        .init(id: "id", name: "Dikaprio", dish: .init(id: "id4", name: "Syrne", desription: "nice have ever tasted!", image: "https://picsum.photos/100/200", calories: 555))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        
        navigationController?.pushViewController(controller, animated: true)
    }
}

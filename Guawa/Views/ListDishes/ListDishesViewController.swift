//
//  ListDishesViewController.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 30.07.2022.
//

import UIKit

class ListDishesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Pizza", desription: "This is the best I have ever tasted! This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!", image: "https://picsum.photos/100/200", calories: 555),
        .init(id: "id1", name: "T-bone", desription: "Delicious meat", image: "https://picsum.photos/100/200", calories: 773),
        .init(id: "id1", name: "Syrne", desription: "gooooooooooooooood", image: "https://picsum.photos/100/200", calories: 999)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCells()
    }
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}

extension ListDishesViewController:
    UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}



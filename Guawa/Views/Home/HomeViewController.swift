//
//  HomeViewController.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 22.06.2022.
//

import UIKit

class HomeViewController: UIViewController {
   
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Kazakh Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 5", image: "https://picsum.photos/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Guawa"
        // Do any additional setup after loading the view.
    
        
        registerCells()
    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        return cell
    }
   
}
    

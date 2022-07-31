//
//  HomeViewController.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 22.06.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Kazakh Dish", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "Kazakh Dish 5", image: "https://picsum.photos/100/200")
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Pizza", desription: "This is the best I have ever tasted! This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!This is the best I have ever tasted!", image: "https://picsum.photos/100/200", calories: 555),
        .init(id: "id1", name: "T-bone", desription: "Delicious meat", image: "https://picsum.photos/100/200", calories: 773),
        .init(id: "id1", name: "Syrne", desription: "gooooooooooooooood", image: "https://picsum.photos/100/200", calories: 999)
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Shashlyk", desription: "Enjoy the exquisite taste of meat", image: "https://picsum.photos/100/200", calories: 555),
        .init(id: "id1", name: "Gulyash", desription: "Amazing meat in gravy with rice", image: "https://picsum.photos/100/200", calories: 773),
        .init(id: "id1", name: "Samarkandi Plov", desription: "OMG its kaif!", image: "https://picsum.photos/100/200", calories: 999)
    ]
    
//    override func loadViewIfNeeded() {
//        self.p.layoutIfNeeded()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        specialCollectionView.delegate = self
        specialCollectionView.dataSource = self
//        title = "Guawa"
        // Do any additional setup after loading the view.
        
//        self.view.layoutIfNeeded()
    
        
        registerCells()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(true)
//    }
    
  private func registerCells() {
       categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    
       popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
    
       specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
  }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case specialCollectionView:
            return specials.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            let controller = ListDishesViewController.instantiate()
            
            navigationController?.pushViewController(controller, animated: true)
            controller.category = categories[indexPath.row]
        } else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            
            navigationController?.pushViewController(controller, animated: true )
        }
    }
   
}
    



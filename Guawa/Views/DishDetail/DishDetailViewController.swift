//
//  DishDetailViewController.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 25.07.2022.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    

    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        populateView()
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.desription
        caloriesLabel.text = dish.formattedCalories
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
    }
    
   
}

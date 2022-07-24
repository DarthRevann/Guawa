//
//  DishLandscapeCollectionViewCell.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 23.07.2022.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        descriptionLabel.text = dish.desription
        caloriesLabel.text = dish.formattedCalories
        
    }
    
    
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

}


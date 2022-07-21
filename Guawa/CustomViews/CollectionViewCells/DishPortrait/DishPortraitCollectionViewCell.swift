//
//  DishPortraitCollectionViewCell.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 17.07.2022.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPortraitCollectionViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: Dish) {
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.desription
        
        layoutIfNeeded()
//        self.view
    }
//    override func layoutIfNeeded() {
//        self.dishImageView.layoutIfNeeded()
    }




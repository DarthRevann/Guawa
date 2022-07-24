//
//  Dish.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 18.07.2022.
//

import Foundation

struct Dish {
    let id, name, desription, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}

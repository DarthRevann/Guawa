//
//  Dish.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 18.07.2022.
//

import Foundation

struct Dish {
    let id, name, desription, image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%2f", calories ?? 0)
    }
}

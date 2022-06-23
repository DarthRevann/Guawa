//
//  String + Extension.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 23.06.2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}

//
//  UIView+Extension.swift
//  Guawa
//
//  Created by Firuza Raiymkul on 29.05.2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}

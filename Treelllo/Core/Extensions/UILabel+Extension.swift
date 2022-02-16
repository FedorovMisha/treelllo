//
//  UILabel+Extension.swift
//  Treelllo
//
//  Created by Артем Калинкин on 16.02.2022.
//

import UIKit

extension UILabel {
  static func withStyle(f: (UILabel) -> Void) -> UILabel {
    let label = UILabel()
    f(label)
    return label
  }
}

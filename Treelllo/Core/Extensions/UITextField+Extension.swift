//
//  UITextField+Extension.swift
//  Treelllo
//
//  Created by Артем Калинкин on 01.03.2022.
//

import UIKit

extension UITextField {
  
  func setRightViewIcon(icon: UIImage) {
      let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: ((frame.height) * 0.70), height: ((frame.height) * 0.70)))
      imageView.image = icon
    
      rightViewMode = .always
      rightView = imageView
  }
  
  func setLeftViewIcon(icon: UIImage) {
      let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 40, height: 60)))
      imageView.image = icon
    
      leftViewMode = .always
      leftView = imageView
  }
  
}

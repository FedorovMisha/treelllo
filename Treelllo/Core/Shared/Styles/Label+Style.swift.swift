//
//  LabelStyle.swift.swift
//  Treelllo
//
//  Created by Артем Калинкин on 16.02.2022.
//

import UIKit

// MARK: - Base Styles

let baseLabelStyle: (UILabel) -> Void = {
  $0.lineBreakMode = .byWordWrapping
  $0.textAlignment = .center
  $0.numberOfLines = 0
  $0.translatesAutoresizingMaskIntoConstraints = false
}

func customize(
  withFont font: UIFont,
  color: UIColor,
  text: String = "") -> (UILabel) -> Void {
    {
      $0.font = UIFontMetrics.default.scaledFont(for: font)
      $0.textColor = color
      $0.text = text
    }
  }

let clip: (UILabel) -> Void = {
  $0.clipsToBounds = true
}

// MARK: - Custom Styles

let titleLabelStyle = baseLabelStyle => customize(
  withFont: FontFamily.Nunito.black.font(size: 36),
  color: .black)




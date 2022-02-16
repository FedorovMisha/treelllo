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

func customized(
  withFont font: UIFont,
  color: UIColor,
  text: String = "") -> (UILabel) -> Void {
    {
      $0.font = UIFontMetrics.default.scaledFont(for: font)
      $0.textColor = color
      $0.text = text
    }
  }

func filled(_ text: String, withKern kern: Double? = nil)
-> (UILabel) -> Void {
  {
    $0.text = text
    guard let kern = kern else { return }
    $0.addCharacterSpacing(kernValue: kern)
  }
}

let clipped: (UILabel) -> Void = {
  $0.clipsToBounds = true
}

// MARK: - Custom Styles

let titleLabelStyle = baseLabelStyle => customized(
  withFont: FontFamily.Nunito.black.font(size: 24),
  color: .black)

let descriptionLabelStyle = baseLabelStyle => customized(
  withFont: FontFamily.Nunito.semiBold.font(size: 14),
  color: .lightGray)



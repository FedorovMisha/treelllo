//
//  TextField.swift
//  Treelllo
//
//  Created by Артем Калинкин on 01.03.2022.
//

import UIKit

class TextField: UITextField
{
  private let textPadding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 20)
  private let viewsPadding = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
  
  private var leftImageEdited: UIImage?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setUp()
  }
  
  private func setUp() {
    rounded(radius: 26)(self)
    layer.borderWidth = 1
    layer.borderColor = ColorName.grayTextFieldBorder.color.cgColor
    textColor = ColorName.grayTextFieldBorder.color
    placeholder = "Input"
    
    font = FontFamily.Lato.regular.font(size: 18)

    addTarget(self, action: #selector(didStartEditing), for: .editingDidBegin)
    addTarget(self, action: #selector(didEditing), for: .editingChanged)
  }
  
  @objc func didEditing() {
    addKernValue(kern: 1)
  }

  private func addKernValue(kern: Double = 1.15) {
    guard let text = text, !text.isEmpty else { return }
    let string = NSMutableAttributedString(string: text)
    string.addAttribute(NSAttributedString.Key.kern, value: kern, range: NSRange(location: 0, length: string.length - 1))
    attributedText = string
  }
  
  @objc func didStartEditing() {
    layer.borderColor = ColorName.editedTextFieldBorder.color.cgColor
    textColor = ColorName.editedTextFieldBorder.color
    guard let leftImageEdited = leftImageEdited else { return }
    setLeftViewIcon(icon: leftImageEdited)
  }

  override func textRect(forBounds bounds: CGRect) -> CGRect {
    let rect = super.textRect(forBounds: bounds)
    return rect.inset(by: textPadding)
  }
  
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    let rect = super.textRect(forBounds: bounds)
    return rect.inset(by: textPadding)
  }
  
  override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
    var rect = super.leftViewRect(forBounds: bounds)
    rect.origin.x += viewsPadding.left
    return rect
  }
  
  override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
    var rect = super.rightViewRect(forBounds: bounds)
    rect.origin.x -= viewsPadding.right
    return rect
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension TextField {
  
  func configure(model: TextFieldModel) {
    if let leftImage = model.leftImage { setLeftViewIcon(icon: leftImage) }
    if let rightImage = model.rightImage { setRightViewIcon(icon: rightImage) }
    leftImageEdited = model.leftImageEdited
    self.placeholder = model.placeholder
    self.textContentType = .name
    self.isSecureTextEntry = model.isSecure
  }
}

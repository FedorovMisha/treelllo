//
//  TextField.swift
//  Treelllo
//
//  Created by Артем Калинкин on 01.03.2022.
//

import UIKit

class TextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    private let textPadding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 20)
    private let viewsPadding = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    private var leftImageEdited: UIImage?
    private var leftImageDefault: UIImage?
    private var LoginVC: LoginViewController?
    
    private func setUp() {
        rounded(radius: 26)(self)
        layer.borderWidth = 1
        layer.borderColor = ColorName.grayTextFieldBorder.color.cgColor
        textColor = ColorName.grayTextFieldBorder.color
        placeholder = "Input"
        font = FontFamily.Lato.regular.font(size: 18)
        addTarget(self, action: #selector(didStartEditing(sender:)), for: .editingDidBegin)
        addTarget(self, action: #selector(didEditing), for: .editingChanged)
    }
    
    @objc func didEditing() {
        addKernValue(kern: 1)
        print("#3")
    }
    
    private func addKernValue(kern: Double = 1.15) {
        guard let text = text, !text.isEmpty else { return }
        let string = NSMutableAttributedString(string: text)
        string.addAttribute(NSAttributedString.Key.kern, value: kern, range: NSRange(location: 0, length: string.length - 1))
        attributedText = string
    }
    
    @objc func didStartEditing(sender: UITapGestureRecognizer) {
        layer.borderColor = ColorName.editedTextFieldBorder.color.cgColor
        textColor = ColorName.editedTextFieldBorder.color
        guard let leftImageEdited = leftImageEdited else { return }
        setLeftViewIcon(icon: leftImageEdited)
        print("#1")
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.8
        layer.shadowColor = UIColor.black.cgColor
        print("shadowOn")

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
        leftImageDefault = model.leftImage
        self.placeholder = model.placeholder
        self.textContentType = .name
        self.isSecureTextEntry = model.isSecure
    }
    
    @objc func endEditing() {
        layer.borderColor = ColorName.grayTextFieldBorder.color.cgColor
        textColor = ColorName.grayTextFieldBorder.color
        print("#2.1")
        if let leftImage = leftImageDefault {
            print("true")
        } else { print("false")}
        
        if textColor == ColorName.grayTextFieldBorder.color {
            print("true")
        } else { print("false")}
        
        if layer.borderColor == ColorName.grayTextFieldBorder.color.cgColor
 {
            print("true")
        } else { print("false")}
        
//        guard let leftImageDefault = leftImageDefault else { return }
//        print("#2.2")
//
//        setLeftViewIcon(icon: leftImageDefault)
        layer.masksToBounds = true
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 0
        layer.shadowOpacity = 0.0
        layer.shadowColor = UIColor.black.cgColor
        print("shadowOff")
        print("#2")
    }
    
    @objc func StartEditing(sender: UITapGestureRecognizer) {
        layer.borderColor = ColorName.editedTextFieldBorder.color.cgColor
        textColor = ColorName.editedTextFieldBorder.color
        guard let leftImageEdited = leftImageEdited else { return }
        setLeftViewIcon(icon: leftImageEdited)
        print("#3.1")
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
}



//
//  TextFieldModel.swift
//  Treelllo
//
//  Created by Артем Калинкин on 01.03.2022.
//

import Foundation
import UIKit

enum TextFieldModel: Int {
  case name
  case email
  case password
  
  var placeholder: String {
    switch self {
    case .name: return "User name"
    case .email: return "Email"
    case .password: return "Password"
    }
  }
  
  var isSecure: Bool {
    switch self {
    case .name, .email: return false
    case .password: return true
    }
  }
  
  var leftImage: UIImage? {
    switch self {
    case .name:
      return Images.emojiHappy.image
    case .email:
       return Images.sms.image
    case .password:
       return Images.shieldTick.image
    }
  }
  
  var leftImageEdited: UIImage? {
    switch self {
    case .name:
      return Images.emojiHappyEdited.image
    case .email:
        return Images.smsEdited.image
    case .password:
        return Images.shieldTickEdited.image
    }
  }
  
  var rightImage: UIImage? {
    switch self {
    case .name, .email:
      return nil
    case .password:
        return Images.eye.image
    }
  }

}

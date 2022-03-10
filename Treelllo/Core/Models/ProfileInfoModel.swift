//
//  ProfileInfoModel.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 10.03.2022.
//

import UIKit
import Foundation

enum ProfileInfoModel {
    case userName
    case email
    case phone
    case country
    case city
    
    var text: String {
        switch self {
        case .userName:
            return "User name"
        case .email:
            return "Email"
        case .phone:
            return "Phone"
        case .country:
            return "Country"
        case .city:
            return "City"
        }
    }
    
    
}


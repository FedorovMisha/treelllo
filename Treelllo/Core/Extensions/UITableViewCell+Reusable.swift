//
//  UITableViewCell+Reusable.swift
//  Treelllo
//
//  Created by Misha Fedorov on 13.02.2022.
//

import Foundation
import UIKit

extension UITableViewCell: Reusable {
    var reuseIdentifier: String {
        return "\(Self.self)"
    }
}

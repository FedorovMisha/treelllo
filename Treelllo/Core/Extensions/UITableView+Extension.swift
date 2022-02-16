//
//  UITableView+Extension.swift
//  Treelllo
//
//  Created by Артем Калинкин on 15.02.2022.
//

import UIKit

extension UITableView {
  func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
    guard let cell = self.dequeueReusableCell(withIdentifier: "\(T.self)", for: indexPath) as? T
    else { fatalError("Can't configurate a cell") }
    return cell
  }

}

//
//  TableCellViewModel.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

protocol TableCellViewModel: ReusableViewModel {
    associatedtype CellType: UITableViewCell

    func configure(_ cell: CellType)
}

extension TableCellViewModel {
    func configure(any object: Any) {
        guard let cell = object as? CellType else { fatalError("[TableCellViewModel] - can't cast type") }
        self.configure(cell)
    }
}

//
//  CollectionViewCellViewModel.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

protocol CollectionViewCellViewModel: ReusableViewModel {
    associatedtype CellType: UICollectionViewCell

    func configure(_ cell: CellType)
}

extension CollectionViewCellViewModel {
    func configure(any object: Any) {
        guard let cell = object as? CellType else { fatalError("[TableCellViewModel] - can't cast type") }
        self.configure(cell)
    }
}

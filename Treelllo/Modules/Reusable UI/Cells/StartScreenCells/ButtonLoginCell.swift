//
//  ButtonLoginCell.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 08.03.2022.
//

import UIKit
import SnapKit

class ButtonLoginCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpLayout()
    }
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: FontFamily.Lato.bold.name, size: 25)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.addCharacterSpacing(kernValue: 3)
        button.backgroundColor = ColorName.deeppurple
        rounded(radius: 25)(button)
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 0, height: 10)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.2
        button.layer.shadowColor = UIColor.black.cgColor
        button.titleLabel?.textColor = ColorName.defaultBlackLabel.color

        return button
    }()
    
    private func setUpUI() {
        contentView.addSubview(button)
    }
    
    private func setUpLayout() {
      button.snp.makeConstraints({ make -> Void in
        make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 82, left: 25, bottom: 20, right: 25))
        make.height.equalTo(65) // 85
      })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

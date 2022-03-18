//
//  ButtonStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 16.02.2022.
//

import UIKit
import SnapKit

class ButtonSaveCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpLayout()
    }
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: FontFamily.Lato.bold.name, size: 25)
        button.titleLabel?.textColor = .white
        button.setTitle("Save", for: .normal)
        //UIFont(name: FontFamily.Lato.bold.name, size: 25)
        button.titleLabel?.addCharacterSpacing(kernValue: 3)
        button.backgroundColor = ColorName.deeppurple
        return button
    }()
    
    private func setUpUI() {
        contentView.addSubview(button)
    }
    
    private func setUpLayout() {
        button.snp.makeConstraints({ make -> Void in
            make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 40, left: 25, bottom: 20, right: 25))
            make.height.equalTo(65)
        })
        button.layer.masksToBounds = false
        button.layer.shadowOffset = CGSize(width: 0, height: 10)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.2
        button.layer.shadowColor = UIColor.black.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

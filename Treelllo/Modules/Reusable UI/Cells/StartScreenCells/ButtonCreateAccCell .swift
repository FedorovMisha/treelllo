//
//  ButtonCreateAccount.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 05.03.2022.
//

import UIKit
import SnapKit

class ButtonCreateAccCell: UITableViewCell {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = UIFont(name: FontFamily.Lato.bold.name, size: 25)
        button.setTitle("Crete account", for: .normal)
//        let b = customized(withFont: FontFamily.Lato.bold.name, color: .black)

        //button.currentImage = UIImage(named: "arrow-left")
        button.titleLabel?.addCharacterSpacing(kernValue: 3)
        button.backgroundColor = .cyan
        button.titleLabel?.textColor = .black

        rounded(radius: 25)(button)
        
        return button
    }()
    
    // 86 44 232
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpUI()
        setUpLayout()
    }
    
    private func setUpUI() {
        contentView.addSubview(button)
    }
    
    private func setUpLayout() {
        button.snp.makeConstraints({ make -> Void in
            make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 202, left: 50, bottom: 20, right: 50))
            make.height.equalTo(60)
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


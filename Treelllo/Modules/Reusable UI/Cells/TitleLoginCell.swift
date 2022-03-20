//
//  TitleLoginScreen.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 03.03.2022.
//

import UIKit

class TitleLoginCell: UITableViewCell {
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.font = FontFamily.Lato.bold.font(size: 48)
        label.text = "Register"
        label.textColor = ColorName.defaultBlackLabel.color
        label.textAlignment = .center
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpUI()
        setUpLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TitleLoginCell {
    private func setUpLayout() {
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview()
            $0.right.equalToSuperview()
            $0.top.equalTo(contentView).offset(70)
            $0.bottom.equalTo(contentView).offset(-40)
        }
    }
    
    private func setUpUI() {
        contentView.addSubview(titleLabel)
    }
    
    func configure(f: (UILabel) -> Void) {
        f(titleLabel)
    }
}

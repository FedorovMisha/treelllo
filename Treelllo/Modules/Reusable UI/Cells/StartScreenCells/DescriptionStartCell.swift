//
//  DescriptionStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 15.02.2022.
//

import UIKit

class DescriptionStartCell: UITableViewCell {
    
    private var titleLabel = UILabel.withStyle(f: titleLabelStyle =>
                                               filled(Text.startScreenTitle, withKern: 3))
    
    private var descriptionLabel = UILabel.withStyle(f: descriptionLabelStyle =>
                                                     filled(Text.startScreenDescription, withKern: 2))
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUpUI()
        setUpLayout()
    }
    
    private func setUpUI() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
    }
    
    private func setUpLayout() {
        titleLabel.snp.makeConstraints({ make -> Void in
            make.left.equalTo(contentView).offset(20)
            make.top.equalTo(contentView).offset(10)
            make.right.equalTo(contentView).offset(-20)
        })
        
        descriptionLabel.snp.makeConstraints({ make -> Void in
            make.right.equalTo(titleLabel)
            make.left.equalTo(titleLabel)
            make.top.equalTo(titleLabel.snp_bottomMargin).offset(20)
            make.bottom.equalTo(contentView).offset(-50)
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

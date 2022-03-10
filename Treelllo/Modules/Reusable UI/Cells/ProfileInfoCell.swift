//
//  ProfileInfoCell.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 06.03.2022.
//

import UIKit
import SnapKit

class ProfileInfoCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    
    
    private lazy var leftRect: UIView = {
        let leftRect = UIView()
        leftRect.backgroundColor = UIColor(red: 64 / 255, green: 62 / 255, blue: 198 / 255 , alpha: 1)
        return leftRect
    }()
    
    private lazy var emailLabel: UILabel = {
        var emailLabel = UILabel()
        let text = "User name"
        emailLabel = UILabel.withStyle(f: descriptionLabelStyle =>
                                                         filled(text, withKern: 2))
        emailLabel.textAlignment = .left
        emailLabel.font = FontFamily.Lato.bold.font(size: 14)
        return emailLabel
    }()
        
    
    private lazy var label: UILabel = {
        var label = UILabel()
        let text = "Max Pain"
        label.textColor = ColorName.defaultBlackLabel.color
        label = UILabel.withStyle(f: titleLabelStyle =>
                                                         filled(text, withKern: 2))
        label.textAlignment = .left
        label.font = FontFamily.Nunito.semiBold.font(size: 21)
        return label
    }()
    
    
    private func configureUI() {
        contentView.addSubview(label)
        contentView.addSubview(emailLabel)
        contentView.addSubview(leftRect)
        leftRect.layer.cornerRadius = 5
        
        
        
        leftRect.snp.makeConstraints { make in
            //make.centerX.equalTo(contentView)
            make.height.equalTo(74)
            make.width.equalTo(9)
            make.left.equalTo(contentView).offset(20)
            make.top.equalTo(contentView).offset(10)
            make.bottom.equalTo(contentView).offset(-10)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(contentView)
            make.centerY.equalTo(contentView)
            make.height.equalTo(20)
            make.left.equalTo(leftRect).offset(23)
            make.right.equalTo(contentView).offset(-50)
            //make.top.equalTo(contentView).offset(40)
            //make.bottom.equalTo(contentView).offset(-10)
        }
        emailLabel.snp.makeConstraints { make in
        make.centerX.equalTo(contentView)
        //make.centerY.equalTo(contentView)
//        make.height.equalTo(20)
        make.left.equalTo(leftRect).offset(27)
        make.top.equalTo(label).offset(20)
//
    }
        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

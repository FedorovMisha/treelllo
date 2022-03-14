//
//  ViewProfileCell.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 06.03.2022.
//

import UIKit
import SnapKit

class ViewProfileCell: UITableViewCell {
    private var viewProfile: UIView = {
        let viewProfile = UIView()
        return viewProfile
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpLayout()
    }
    
    private func setUpUI() {
        contentView.addSubview(viewProfile)
        viewProfile.backgroundColor = UIColor(red: 63 / 255, green: 56 / 255, blue: 200 / 255 , alpha: 1)
       
    }
    
    private func setUpLayout() {
        viewProfile.layer.cornerRadius = 15
        viewProfile.snp.makeConstraints {
            $0.right.equalTo(-90)
            $0.left.equalTo(90)
            $0.centerY.equalTo(contentView)
            $0.centerX.equalTo(contentView)
            $0.height.equalTo(230)
            $0.top.equalTo(58)
            $0.bottom.equalTo(-30)
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

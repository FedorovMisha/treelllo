//
//  TitleStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 15.02.2022.
//

import UIKit

class TitleStartCell: UITableViewCell {
  
  private lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.font = FontFamily.Lato.bold.font(size: 40)
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
  
  func configure(f :(UILabel) -> Void) {
    f(titleLabel)
  }
  
  private func setUpLayout() {
    titleLabel.snp.makeConstraints({ make -> Void in
      make.centerX.equalToSuperview()
      make.centerY.equalToSuperview()
      make.left.equalToSuperview()
      make.right.equalToSuperview()
      make.top.equalTo(contentView).offset(10)
      make.bottom.equalTo(contentView).offset(-40)
    })
  }
  
  private func setUpUI() {
    contentView.addSubview(titleLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

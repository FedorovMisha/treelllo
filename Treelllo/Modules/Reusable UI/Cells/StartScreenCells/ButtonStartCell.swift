//
//  ButtonStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 16.02.2022.
//

import UIKit
import SnapKit

class ButtonStartCell: UITableViewCell {
  
  private lazy var button: UIButton = {
    let button = UIButton()
    button.titleLabel?.textColor = .white
    button.titleLabel?.font = UIFont(name: FontFamily.Nunito.black.name, size: 25)
    button.setTitle("Get started", for: .normal)
    button.titleLabel?.addCharacterSpacing(kernValue: 3)
    button.backgroundColor = UIColor(red: 86 / 255, green: 44 / 255, blue: 232 / 255 , alpha: 1)
    rounded(radius: 15)(button)
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
      make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 0, left: 50, bottom: 20, right: 50))
      make.height.equalTo(60)
    })
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

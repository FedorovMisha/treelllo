//
//  ButtonStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 16.02.2022.
//

import UIKit
import SnapKit

class ButtonSaveCell: UITableViewCell {
  
  private lazy var button: UIButton = {
    let button = UIButton()
    button.titleLabel?.textColor = .white
      button.titleLabel?.font = UIFont(name: FontFamily.Lato.bold.name, size: 25)
    button.setTitle("Save", for: .normal)
    button.titleLabel?.addCharacterSpacing(kernValue: 3)
    button.backgroundColor = UIColor(red: 64 / 255, green: 62 / 255, blue: 198 / 255 , alpha: 1)
    rounded(radius: 25)(button)
    return button
  }()

  
  
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
      make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 40, left: 25, bottom: 20, right: 25))
      make.height.equalTo(65)
    })
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

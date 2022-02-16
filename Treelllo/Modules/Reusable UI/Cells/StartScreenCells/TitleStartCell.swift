//
//  TitleStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 15.02.2022.
//

import UIKit

class TitleStartCell: UITableViewCell {
  
  #warning("Dimas, that's for you")
  
  private lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.font = FontFamily.Nunito.black.font(size: 20)
    label.text = "Dimas, just do it"
    label.textColor = .black
    label.textAlignment = .left
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setUpUI()
    setUpLayout()
  }
  
  private func setUpLayout() {
    titleLabel.snp.makeConstraints({ make -> Void in
      make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 20, left: 45, bottom: 20, right: 45))
    })
  }
  
  private func setUpUI() {
    contentView.addSubview(titleLabel)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

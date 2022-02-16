//
//  PictureStartCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 15.02.2022.
//

import UIKit

class PictureStartCell: UITableViewCell {
  
  private lazy var humanImageView: UIImageView = {
    let view = UIImageView()
    view.image = Images.human.image
    view.contentMode = .scaleAspectFit
    return view
  }()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setUpUI()
    setUpLayout()
  }

  private func setUpUI() {
    contentView.addSubview(humanImageView)
  }
  
  private func setUpLayout() {
    humanImageView.snp.makeConstraints({ make -> Void in
      make.height.equalTo(360)
      make.width.equalTo(320)
      make.centerX.equalToSuperview()
      make.centerY.equalToSuperview()
      make.bottom.equalTo(contentView).offset(-10)
      make.top.equalTo(contentView).offset(10)
    })
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

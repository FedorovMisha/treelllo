//
//  TextFieldCell.swift
//  Treelllo
//
//  Created by Артем Калинкин on 28.02.2022.
//

import UIKit

final class TextFieldCell: UITableViewCell {
  
  private var textField = TextField()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    configureUI()
  }
  
  func setTextField(for indexPath: IndexPath, withOffset offset: Int) {
    guard let model = TextFieldModel(rawValue: indexPath.row - offset) else
    { fatalError("[TextFieldCell] - Wrong index path for cell")}
    textField.configure(model: model)
  }

  private func configureUI() {
    contentView.addSubview(textField)
    
    textField.snp.makeConstraints { make in
      make.centerX.equalTo(contentView)
      make.centerY.equalTo(contentView)
      make.height.equalTo(55)
      make.left.equalTo(contentView).offset(20)
      make.right.equalTo(contentView).offset(-20)
      make.top.equalTo(contentView).offset(47)
      make.bottom.equalTo(contentView).offset(0)
    }
    
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension TextFieldCell {
  
}

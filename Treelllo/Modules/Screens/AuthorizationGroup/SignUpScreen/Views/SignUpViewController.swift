//
//  SignUpViewController.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

class SignUpViewController: UIViewController {
  
  private var tableView = UITableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    conifigTableView()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    tableView.frame = view.bounds
  }
}

extension SignUpViewController: UITableViewDelegate, UITableViewDataSource {
  
  private func conifigTableView() {
    tableView.separatorStyle = .none
    tableView.allowsSelection = false

    view.addSubview(tableView)

    tableView.register(TextFieldCell.self, forCellReuseIdentifier: "\(TextFieldCell.self)")
    tableView.register(TitleStartCell.self, forCellReuseIdentifier: "\(TitleStartCell.self)")

    tableView.dataSource = self
    tableView.delegate = self
  }
  

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
      let cell: TitleStartCell = tableView.dequeueReusableCell(for: indexPath)
      cell.configure(f: filled("Register", withKern: 3))
      return cell
    default:
      let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
      cell.setTextField(for: indexPath, withOffset: 1)
      return cell
    }
  }

}

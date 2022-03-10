//
//  StartViewController.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

class StartViewController: UIViewController {
  
  private var tableView = UITableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    conifigTableView()
  }
  
  private func conifigTableView() {
    tableView.separatorStyle = .none
    tableView.allowsSelection = false
//    tableView.backgroundColor = .red
    
    view.addSubview(tableView)

    tableView.register(TitleStartCell.self, forCellReuseIdentifier: "\(TitleStartCell.self)")
    tableView.register(PictureStartCell.self, forCellReuseIdentifier: "\(PictureStartCell.self)")
    tableView.register(DescriptionStartCell.self, forCellReuseIdentifier: "\(DescriptionStartCell.self)")
    tableView.register(ButtonSaveCell.self, forCellReuseIdentifier: "\(ButtonSaveCell.self)")

      
    
    tableView.dataSource = self
    tableView.delegate = self
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    tableView.frame = view.bounds
  }
  
}

extension StartViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
      let cell: TitleStartCell = tableView.dequeueReusableCell(for: indexPath)
      return cell
    case 1:
      let cell: PictureStartCell = tableView.dequeueReusableCell(for: indexPath)
      return cell
    case 2:
      let cell: DescriptionStartCell = tableView.dequeueReusableCell(for: indexPath)
      return cell
    case 3:
      let cell: PictureStartCell = tableView.dequeueReusableCell(for: indexPath)
      return cell
    default:
      fatalError("Invalid index path for cell")
    }
  }

  
}


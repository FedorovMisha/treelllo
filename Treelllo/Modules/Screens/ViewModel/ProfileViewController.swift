//
//  ProfileViewController.swift
//  Treelllo
//
//  Created by Мельник Дмитрий on 06.03.2022.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confTableView()
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    
    private func confTableView() {
        
        view.addSubview(tableView)
        
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ViewProfileCell.self, forCellReuseIdentifier: "\(ViewProfileCell.self)")
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: "\(TextFieldCell.self)")
        tableView.register(ProfileInfoCell.self, forCellReuseIdentifier: "\(ProfileInfoCell.self)")
        tableView.register(ButtonSaveCell.self, forCellReuseIdentifier: "\(ButtonSaveCell.self)")
        tableView.register(ButtonCancelCell.self, forCellReuseIdentifier: "\(ButtonCancelCell.self)")
        
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell: ViewProfileCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 1:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setUserText(for: indexPath, withOffset: 1)
            return cell
        case 2:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setUserText(for: indexPath, withOffset: 1)
            return cell
        case 3:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setUserText(for: indexPath, withOffset: 1)
            return cell
        case 4:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setUserText(for: indexPath, withOffset: 1)
            return cell
        case 5:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setUserText(for: indexPath, withOffset: 1)
            return cell
        case 6:
            let cell: ButtonSaveCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 7:
            let cell: ButtonCancelCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        default:
            let cell: ProfileInfoCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        }
    }
    
    
}

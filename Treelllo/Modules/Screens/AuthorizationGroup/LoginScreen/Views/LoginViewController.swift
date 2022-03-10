//
//  LoginViewController.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var tableView = UITableView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configuereTableView()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension LoginViewController: UITableViewDelegate, UITableViewDataSource {
    

    private func configuereTableView() {
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        
        tableView.register(TitleLoginCell.self, forCellReuseIdentifier: "\(TitleLoginCell.self)")
        tableView.register(ButtonLoginCell.self, forCellReuseIdentifier: "\(ButtonLoginCell.self)")
        tableView.register(TextFieldCell.self, forCellReuseIdentifier: "\(TextFieldCell.self)")
        tableView.register(ButtonCreateAccCell.self, forCellReuseIdentifier: "\(ButtonCreateAccCell.self)")
        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell: TitleLoginCell = tableView.dequeueReusableCell(for: indexPath)
            cell.configure(f: filled("Login", withKern: 3))
            return cell
        case 1: let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setTextField(for: indexPath, withOffset: 0)
            return cell
        case 2: let cell: TextFieldCell = tableView.dequeueReusableCell(for: indexPath)
            cell.setTextField(for: indexPath, withOffset: 0)
            return cell
        case 3: let cell: ButtonLoginCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
        case 4: let cell: ButtonCreateAccCell = tableView.dequeueReusableCell(for: indexPath)
            return cell
            
        default:
            fatalError("Invalid index path for cell")
        }
    }
    
    
    
    
}

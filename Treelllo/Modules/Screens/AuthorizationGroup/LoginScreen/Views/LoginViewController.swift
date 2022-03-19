//
//  LoginViewController.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var tableView = UITableView()
    private var textField = TextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello!")
        
        view.backgroundColor = .white
        configuereTableView()
        
        let guestuere = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard(sender:)))
        guestuere.numberOfTapsRequired = 1
        guestuere.numberOfTouchesRequired = 1
        view.addGestureRecognizer(guestuere)
        
        // add Observer
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillshow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillhide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
        
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
    
    @objc func hideKeyboard(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
        textField.layer.masksToBounds = true
        textField.layer.shadowOffset = CGSize(width: 0, height: 10)
        textField.layer.shadowRadius = 0
        textField.layer.shadowOpacity = 0.0
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.endEditing()
        print("Hide func")
        print("\(self.view.frame.origin.y)")
        print("\(self.view.frame.height)")
    }
    
    @objc func keyboardWillshow(notification: NSNotification) {
        print("Show observer")
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgSizeValue.height
//            let bottomSpace = self.view.frame.height - ()
            self.view.frame.origin.y -= keyboardHeight
        }
    }
    
    @objc func keyboardWillhide(notification: NSNotification) {
        print("Hide observer1")
        self.view.endEditing(true)
        
    }
    
    
    
    
    
    func registerForKeyboardNotification() {
        
    }
}

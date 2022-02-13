//
//  LoginScreenCoordinator.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() -> UIViewController {
        let controller = LoginViewController()
        return controller
    }
}

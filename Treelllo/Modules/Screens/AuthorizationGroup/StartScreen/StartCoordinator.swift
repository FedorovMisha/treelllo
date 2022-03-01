//
//  StartCoordinator.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

enum StartCoordinatorFlow {
    case toLogin
}

final class StartCoordinator: Coordinator {
    
    private var navigationViewController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationViewController = navigationController
    }
    
    func start() -> UIViewController {
        let controller = SignUpViewController()
        return controller
    }
}

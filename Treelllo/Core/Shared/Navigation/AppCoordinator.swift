//
//  AppCoordinator.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import UIKit

final class AppCoordinator: Coordinator {

    enum Flow {
        case toStartScreen
        case toMainScreen
    }
    
    var navigationController: UINavigationController
    private var startScreenCoordinator: StartCoordinator

    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.startScreenCoordinator = StartCoordinator(self.navigationController)
    }
    
    func start() -> UIViewController {
        let controller = startScreenCoordinator.start()
        navigationController.setViewControllers([controller], animated: true)
        return navigationController
    }
}

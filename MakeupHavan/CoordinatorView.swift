//
//  CoordinatorView.swift
//  MakeupHavan
//
//  Created by Gabriel de Sousa Barbosa on 25/08/22.
//

import Foundation
import UIKit

class CoordinatorView: Coordinator {
    let navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let viewController = ProductsViewController()
        self.navigationController.pushViewController(viewController,animated: true)
    }
}

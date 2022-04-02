//
//  AppCoordinator.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 02/04/22.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var navController: UINavigationController?
    
    init (_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        if let navVC = navController {
            let mainCoordinator = AuthenticationCoordinator(navVC)
            mainCoordinator.start()
        }
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}//End of class

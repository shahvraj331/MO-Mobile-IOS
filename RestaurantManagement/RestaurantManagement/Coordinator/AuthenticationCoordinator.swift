//
//  AuthenticationCoordinator.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import Foundation
import UIKit

class AuthenticationCoordinator: Coordinator {
    
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        
    }
    
    func startAuthenticationViewController() {
        let authenticationViewController = AuthenticationViewController.instantiate(from: .authenticationStoryboard)
        authenticationViewController.coordinator = self
        navController?.pushViewController(authenticationViewController, animated: true)
    }
    
    func startLoginScreenViewController() {
        let loginScreenViewController = LoginScreenViewController.instantiate(from: .authenticationStoryboard)
        loginScreenViewController.coordinator = self
        navController?.pushViewController(loginScreenViewController, animated: true)
    }
    
    func startSignUpScreenViewController() {
        let signUpScreenViewController = SignUpScreenViewController.instantiate(from: .authenticationStoryboard)
        signUpScreenViewController.coordinator = self
        navController?.pushViewController(signUpScreenViewController, animated: true)
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of Class

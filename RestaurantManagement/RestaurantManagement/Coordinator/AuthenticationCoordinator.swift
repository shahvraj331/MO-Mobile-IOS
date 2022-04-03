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
        let authenticationViewController = AuthenticationViewController.instantiate(from: .authenticationStoryboard)
        authenticationViewController.coordinator = self
        navController?.pushViewController(authenticationViewController, animated: true)
    }
    
    func startLoginScreenViewController(isPushedAgain: Bool) {
        if isPushedAgain {
            navController?.popViewController(animated: true)
        } else {
            let loginScreenViewController = LoginScreenViewController.instantiate(from: .authenticationStoryboard)
            loginScreenViewController.coordinator = self
            navController?.pushViewController(loginScreenViewController, animated: true)
            
        }
    }
    
    func onLoginSucess() {
        let tabBar = TabBarViewController.instantiate(from: .homeScreen)
        tabBar.coordinator = HomeScreenCoordinator(self.navController!)
        navController?.pushViewController(tabBar, animated: true)
    }
    
    func startSignUpScreenViewController(isPushedAgain: Bool) {
        if isPushedAgain {
            navController?.popViewController(animated: true)
        } else {
            let signUpScreenViewController = SignUpScreenViewController.instantiate(from: .authenticationStoryboard)
            signUpScreenViewController.coordinator = self
            navController?.pushViewController(signUpScreenViewController, animated: true)
        }
    }
    
    func startForgotPassewordViewController() {
        let forgotPassewordViewController = ForgotPassewordViewController.instantiate(from: .authenticationStoryboard)
        forgotPassewordViewController.coordinator = self
        navController?.pushViewController(forgotPassewordViewController, animated: true)
    }
    
    func startResetPasswordViewController() {
        let resetPasswordViewController = ResetPasswordViewController.instantiate(from: .authenticationStoryboard)
        resetPasswordViewController.coordinator = self
        navController?.pushViewController(resetPasswordViewController, animated: true)
    }
    
    func onLoginSuccess() {
        //let homeScreenVC = HomeScreenViewController.instantiate(from: .)
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}// End of Class

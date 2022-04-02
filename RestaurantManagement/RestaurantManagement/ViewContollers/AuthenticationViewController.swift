//
//  AuthenticationViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class AuthenticationViewController: UIViewController, Storyboarded  {

    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func loginButtonAction(_ sender: UIButton) {
        coordinator?.startLoginScreenViewController()
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        coordinator?.startSignUpScreenViewController()
    }
    
    @IBAction func laterButtonAction(_ sender: UIButton) {
                
    }

}// End of Class

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
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
    }
    
    //MARK: - Actions
    @IBAction func loginButtonAction(_ sender: UIButton) {
        coordinator?.startLoginScreenViewController(isPushedAgain: false)
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        coordinator?.startSignUpScreenViewController(isPushedAgain: false)
    }
    
    @IBAction func laterButtonAction(_ sender: UIButton) {
                
    }

}// End of Class

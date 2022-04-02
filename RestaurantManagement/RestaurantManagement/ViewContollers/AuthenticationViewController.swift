//
//  AuthenticationViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class AuthenticationViewController: UIViewController, Storyboarded  {

    //MARK: - Outlets
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLater: UIButton!
    
    //MARK: - Variables
    var coodinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func loginButtonAction(_ sender: UIButton) {
        coodinator?.startLoginScreenViewController()
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        coodinator?.startSignUpScreenViewController()
    }
    
    @IBAction func laterButtonAction(_ sender: UIButton) {
                
    }

}// End of Class

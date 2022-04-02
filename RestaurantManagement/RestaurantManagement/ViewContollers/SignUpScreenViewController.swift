//
//  SignUpScreenViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class SignUpScreenViewController: UIViewController, Storyboarded  {

    //MARK: - Outlets
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnShowHidePassword: UIButton!
    @IBOutlet weak var switchRemeberMe: UISwitch!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func showHidePasswordButtonAction(_ sender: UIButton) {
       
    }
    
    @IBAction func remeberMeSwitchAction(_ sender: UISwitch) {
       
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        coordinator?.startLoginScreenViewController()
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        
    }

}// End of Class

//
//  LoginScreenViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class LoginScreenViewController: UIViewController, Storyboarded  {

    //MARK: - Outlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnShowHidePassword: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    //MARK: - Actions
    @IBAction func showHidePasswordButtonAction(_ sender: UIButton) {
       
    }
    
    @IBAction func hideAndShowPasswordAction(_ sender: UIButton) {
        if sender.isSelected {
            tfPassword.isSecureTextEntry = false
            sender.isSelected = false
        } else {
            tfPassword.isSecureTextEntry = true
        }
    }
    
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        coordinator?.startForgotPassewordViewController()
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        guard let email = tfEmail.text?.trimmingCharacters(in: .whitespaces) else { return }
        guard let password = tfPassword.text?.trimmingCharacters(in: .whitespaces) else { return }
        
        let currentUserDetails = loginUser(email: email, password: password)
        coordinator?.onLoginSucess()
//        AlamofireRequest.loginUser(controller: self, userCredentials: currentUserDetails.loginUserDict) { responseData in
//            guard let responseData = responseData else { return }
//            print(responseData)
//        }
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        guard let vcList = self.navigationController?.viewControllers else { return }
        if (vcList[vcList.count - 2].isKind(of: SignUpScreenViewController.self) || vcList[vcList.count - 2].isKind(of: LoginScreenViewController.self)) {
            coordinator?.startSignUpScreenViewController(isPushedAgain: true)
        } else {
            coordinator?.startSignUpScreenViewController(isPushedAgain: false)
        }
    }
    
    //MARK: - File private functions
    fileprivate func initView() {
        hideKeyboardWhenTapAround()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
    }

}// End of Class

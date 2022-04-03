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
    @IBOutlet weak var switchRemeberMe: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
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
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        guard let vcList = self.navigationController?.viewControllers else { return }
        if (vcList[vcList.count - 2].isKind(of: SignUpScreenViewController.self) || vcList[vcList.count - 2].isKind(of: LoginScreenViewController.self)) {
            coordinator?.startLoginScreenViewController(isPushedAgain: true)
        } else {
            coordinator?.startLoginScreenViewController(isPushedAgain: false)
        }
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        guard let fullName = tfName.text?.trimmingCharacters(in: .whitespaces) else { return }
        guard let email = tfEmail.text?.trimmingCharacters(in: .whitespaces) else { return }
        guard let password = tfPassword.text?.trimmingCharacters(in: .whitespaces) else { return }
        
        let newUserDetails = SignUpUser(fullname: fullName, email: email, password: password)
        AlamofireRequest.addSingleUser(controller: self, singleUser: newUserDetails.signUpUserDict) { responseData in
            guard let responseData = responseData else { return }
            let userDefaults = myUserDefaults()
            userDefaults.setLoggedIn(value: String(responseData.customerId))
        }
        coordinator?.onLoginSucess()
    }
    
    //MARK: - File private functions
    fileprivate func initView() {
        hideKeyboardWhenTapAround()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
    }

}// End of Class

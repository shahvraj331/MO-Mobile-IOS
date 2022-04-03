//
//  ResetPasswordViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class ResetPasswordViewController: UIViewController, Storyboarded {

    //MARK: - Outlets
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfReEnterPassword: UITextField!
    @IBOutlet weak var btnShowHidePassword: UIButton!
    @IBOutlet weak var btnShowHideReEnterPassword: UIButton!
    @IBOutlet weak var btnChange: UIButton!
    @IBOutlet weak var viewForTextField: UIView!
    @IBOutlet weak var viewPassword: UIView!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblReEnter: UILabel!
    
    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
        viewForTextField.layer.borderWidth = 1
        viewForTextField.layer.cornerRadius = CGFloat(10)
        viewForTextField.layer.borderColor = UIColor.darkGray.cgColor
        viewPassword.layer.borderWidth = 1
        viewPassword.layer.cornerRadius = CGFloat(10)
        viewPassword.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    //MARK: - Actions
    @IBAction func showHidePasswordAction(_ sender: UIButton) {
        
    }
    
    @IBAction func showHideReEnterPassword(_ sender: UIButton) {
        
    }
    
    @IBAction func changeButtonAction(_ sender: UIButton) {
        coordinator?.startLoginScreenViewController(isPushedAgain: false)
    }
    
}// End of Class

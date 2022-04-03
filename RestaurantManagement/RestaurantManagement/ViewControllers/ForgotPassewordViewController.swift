//
//  ForgotPassewordViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class ForgotPassewordViewController: UIViewController, Storyboarded {

    //MARK: - Outlets
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var viewEmail: UIView!
    @IBOutlet weak var lblEmail: UILabel!
    
    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
        viewEmail.layer.borderWidth = 1
        viewEmail.layer.cornerRadius = CGFloat(10)
        viewEmail.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    //MARK: - Actions
    @IBAction func submitButtonAction(_ sender: UIButton) {
        coordinator?.startResetPasswordViewController()
    }
    
}// End of Class

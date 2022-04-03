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
    
    //MARK: - Variables
    var coordinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func submitButtonAction(_ sender: UIButton) {
        coordinator?.startResetPasswordViewController()
    }
    
}// End of Class

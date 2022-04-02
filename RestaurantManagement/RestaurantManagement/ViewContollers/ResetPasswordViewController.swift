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
    
    //MARK: - Variables
    var coodinator: AuthenticationCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func showHidePasswordAction(_ sender: UIButton) {
        
    }
    
    @IBAction func showHideReEnterPassword(_ sender: UIButton) {
        
    }
    
    @IBAction func changeButtonAction(_ sender: UIButton) {
        coodinator?.startLoginScreenViewController()
    }
    
}// End of Class

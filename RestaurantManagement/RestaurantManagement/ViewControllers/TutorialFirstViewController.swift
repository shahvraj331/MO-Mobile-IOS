//
//  TutorialFirstViewController.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 02/04/22.
//

import UIKit

class TutorialFirstViewController: UIViewController, Storyboarded {

    //MARK: - Variables
    var coordinator: TutorialCoordinator?
    let userDefaults = myUserDefaults()
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
        if let loggedInUser = userDefaults.getLoggedInUser() {
            if loggedInUser == 0 {
                coordinator?.skipLoginProcess()
            }
        }
    }
    
    //MARK: - Actions
    @IBAction func secondTutorialAction(_ sender: UIButton) {
        coordinator?.startSecondTutorial()
    }

    @IBAction func loginAction(_ sender: UIButton) {
        coordinator?.skipTutorial()
    }
    
}//End of class

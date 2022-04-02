//
//  TutotialSecondViewController.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 02/04/22.
//

import UIKit

class TutorialSecondViewController: UIViewController, Storyboarded {

    //MARK: - Variables
    var coordinator: TutorialCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = UIColor.orange
    }
    
    //MARK: - Actions
    @IBAction func tutorialThirdAction(_ sender: UIButton) {
        coordinator?.startThirdTutorial()
    }
    
    
    @IBAction func loginAction(_ sender: UIButton) {
        coordinator?.skipTutorial()
    }
    
}//End of class

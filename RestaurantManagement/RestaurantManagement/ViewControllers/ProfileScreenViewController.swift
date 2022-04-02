//
//  ProfileScreenViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class ProfileScreenViewController: UIViewController, Storyboarded {

    // MARK: - Outlets
    @IBOutlet var nameView: UIView! {
        didSet {
            nameView.layer.borderWidth = 1
            nameView.layer.borderColor = CGColor(red: 68/255.0, green: 66/255.0, blue: 81/255.0, alpha: 1)
        }
    }
    
    // MARK: - Variables
    var coordinator: HomeScreenCoordinator?
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}// End of Class

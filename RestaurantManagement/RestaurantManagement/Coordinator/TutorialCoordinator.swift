//
//  TutorialCoordinator.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 02/04/22.
//

import Foundation
import UIKit

class TutorialCoordinator: Coordinator {
    
    var navController: UINavigationController?
    
    init (_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        let firstTutorial = TutorialFirstViewController.instantiate(from: .main)
        firstTutorial.coordinator = self
        navController?.pushViewController(firstTutorial, animated: true)
    }
    
    func startSecondTutorial() {
        let secondTutorial = TutorialSecondViewController.instantiate(from: .main)
        secondTutorial.coordinator = self
        navController?.pushViewController(secondTutorial, animated: true)
    }
    
    func startThirdTutorial() {
        let thirdTutorial = TutorialThirdViewController.instantiate(from: .main)
        thirdTutorial.coordinator = self
        navController?.pushViewController(thirdTutorial, animated: true)
    }
    
    func skipTutorial() {
        if let navController = navController {
            let authenticationVC = AuthenticationCoordinator(navController)
            authenticationVC.start()
        }
    }
    
    func skipLoginProcess() {
        
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
}//End of class

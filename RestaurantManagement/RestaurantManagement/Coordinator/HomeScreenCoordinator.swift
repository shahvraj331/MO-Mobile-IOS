//
//  HomeScreenCoordinator.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import Foundation
import UIKit

class HomeScreenCoordinator: Coordinator {
    
    var navController: UINavigationController?
    
    init(_ navigationController: UINavigationController) {
        navController = navigationController
    }
    
    func start() {
        let homeScreenViewController = HomeScreenViewController.instantiate(from: .authenticationStoryboard)
        homeScreenViewController.coordinator = self
        navController?.pushViewController(homeScreenViewController, animated: true)
    }
    
    func startMenuScreenViewController() {
        let menuScreenViewController = MenuScreenViewController.instantiate(from: .authenticationStoryboard)
        menuScreenViewController.coordinator = self
        navController?.pushViewController(menuScreenViewController, animated: true)
    }
    
    func startCardScreenViewController() {
        let cardScreenViewController = CardScreenViewController.instantiate(from: .authenticationStoryboard)
        cardScreenViewController.coordinator = self
        navController?.pushViewController(cardScreenViewController, animated: true)
    }
    
    func startFavouriteScreenViewController() {
        let favouriteScreenViewController = FavouriteScreenViewController.instantiate(from: .authenticationStoryboard)
        favouriteScreenViewController.coordinator = self
        navController?.pushViewController(favouriteScreenViewController, animated: true)
    }
    
    func startProfileScreenViewController() {
        let profileScreenViewController = ProfileScreenViewController.instantiate(from: .authenticationStoryboard)
        profileScreenViewController.coordinator = self
        navController?.pushViewController(profileScreenViewController, animated: true)
    }
    
    func finish() {
        
    }
    
    func finishToRoot() {
        
    }
    
    
}

//
//  MenuAndTableViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 03/04/22.
//

import UIKit

class MenuAndTableViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UIView!
    @IBOutlet weak var menuItem: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.alpha = 1
        menuItem.alpha = 0
    }
    
    //MARK: - Actions
    @IBAction func segmentedControlActionChanged(sender: AnyObject) {
        switch(sender.selectedSegmentIndex) {
        case 0:
            tableView.alpha = 1
            menuItem.alpha = 0
        case 1:
            tableView.alpha = 0
            menuItem.alpha = 1
        default:
            break
        }
    }

}// End of Class

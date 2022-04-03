//
//  CardScreenViewController.swift
//  RestaurantManagement
//
//  Created by Yagnik Bavishi on 02/04/22.
//

import UIKit

class CardScreenViewController: UIViewController, Storyboarded {

    //MARK: - Outlets
    @IBOutlet weak var tabelView: UITableView!
    
    //MARK: - Variables
    var coordinator: HomeScreenCoordinator?
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
}// End of Class

//MARK: - UITableViewDataSource
extension CardScreenViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell else {
//            return UITableViewCell()
//        }
//        return cell
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}// End of Extension

//MARK: - UITableViewDelegate
extension CardScreenViewController: UITableViewDelegate {

    
}// End of extension

